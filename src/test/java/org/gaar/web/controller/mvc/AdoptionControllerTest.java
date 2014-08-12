package org.gaar.web.controller.mvc;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import static org.mockito.Mockito.atLeastOnce;
import static org.mockito.Mockito.verify;

import java.math.BigInteger;

import javax.mail.MessagingException;

import org.gaar.Entities;
import org.gaar.web.View;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

import com.systemsinmotion.petrescue.mail.MailManager;
import com.systemsinmotion.petrescue.web.PetFinderConsumer;
import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/test-context.xml")
public class AdoptionControllerTest {

	private static final Integer PET_ID = 10;
	
	private static final BigInteger BIG_PET_ID = BigInteger.TEN;
	
	private static final String PET_FORMAT = null;
	
	private PetFinderConsumer mockPetFinderService;
	
	private MailManager mockMailManager;
	
	private PetfinderPetRecord mockPet;
	
	private AdoptionApplication mockApplication;
	
	private Model model = new ExtendedModelMap();

	private AdoptionController controller;
	
	@Before
	public void init() throws MessagingException {
		controller = new AdoptionController();
		mockPet = Entities.getPet();
		mockApplication = Entities.getApplication();
		
		mockPetFinderService = mock(PetFinderConsumer.class);
		when(mockPetFinderService.readPet(BIG_PET_ID, PET_FORMAT)).thenReturn(mockPet);
		
		mockMailManager = mock(MailManager.class);
		doNothing().when(mockMailManager).send(mockApplication, mockPet);
		
		when(BigInteger.valueOf(PET_ID)).thenReturn(BIG_PET_ID);
	}
	
	@Test
	public void testAdopt_GET() {
		String view = controller.adopt_GET(PET_ID, model);
		
		PetfinderPetRecord controllerPet = (PetfinderPetRecord) model.asMap().get("pet");
		AdoptionApplication controllerApplication =  (AdoptionApplication) model.asMap().get("application"); 
		Boolean isCat = (Boolean) model.asMap().get("isCat");
		Boolean isDog = (Boolean) model.asMap().get("isDog");
		
		assertNotNull(view);
		assertEquals(View.adopt.name(), view);
		assertEquals(mockPet,controllerPet);
		assertEquals(mockPet.getName(), controllerApplication.getPetName());
		assertEquals(mockPet.getAnimal().value(), controllerApplication.getAnimalType());
		assertEquals(mockPet.getBreeds().getBreed(), controllerApplication.getBreeds());
		assertEquals(AnimalType.CAT.equals(mockPet.getAnimal()),isCat);
		assertEquals(AnimalType.DOG.equals(mockPet.getAnimal()),isDog);
	}
	
	@Test
	public void testAdopt_POST() throws MessagingException {
		String view = controller.adopt_POST(PET_ID, mockApplication, model);
		
		assertNotNull(view);
		assertEquals(View.adopt_thanks.name(), view);
		verify(mockMailManager, atLeastOnce()).send(mockApplication, mockPet);		
	}
	
	@Test
	public void testThanks() {
		String view = controller.thanks(model);
		
		assertNotNull(view);
		assertEquals(View.adopt_thanks.name(), view);
	}
}
