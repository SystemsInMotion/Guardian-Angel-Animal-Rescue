package org.gaar.web.controller.mvc;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Matchers.eq;
import static org.mockito.Mockito.atLeastOnce;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.math.BigInteger;
import java.util.Random;

import javax.mail.MessagingException;

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
import com.systemsinmotion.petrescue.web.bean.Entities;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/test-context.xml")
public class AdoptionControllerTest {

	private Integer petId;
	
	private BigInteger bigPetId;
	
	private String petFormat = null;
	
	private PetFinderConsumer petFinderService;
	
	private MailManager mailManager;
	
	private PetfinderPetRecord mockPet;
	
	private AdoptionApplication mockApplication;
	
	private Model model = new ExtendedModelMap();

	private AdoptionController controller;
	
	private static Random random = new Random();
	
	@Before
	public void init() throws MessagingException {
		controller = new AdoptionController();
		mockPet = Entities.getPet();
		mockApplication = Entities.getApplication();
		
		petId = random.nextInt();
		bigPetId = BigInteger.valueOf(petId);
		petFinderService = mock(PetFinderConsumer.class);
		controller.petFinderService = this.petFinderService;
		when(petFinderService.readPet(eq(bigPetId), eq(petFormat))).thenReturn(mockPet);

		mailManager = mock(MailManager.class);
		controller.mailManager = this.mailManager;
		doNothing().when(mailManager).sendAdoptionApplication(mockApplication, mockPet);
	}
	
	@Test
	public void testAdopt_GET() {
		String view = controller.adopt_GET(petId, model);
		
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
		String view = controller.adopt_POST(petId, mockApplication, model);
		
		assertNotNull(view);
		assertEquals(View.adopt_thanks.name(), view);
		verify(mailManager, atLeastOnce()).sendAdoptionApplication(mockApplication, mockPet);		
	}
	
	@Test
	public void testThanks() {
		String view = controller.thanks(model);
		
		assertNotNull(view);
		assertEquals(View.adopt_thanks.name(), view);
	}
}
