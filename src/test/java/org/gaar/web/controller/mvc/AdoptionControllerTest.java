package org.gaar.web.controller.mvc;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Matchers.*;
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
	
	private BigInteger unknownPetId;
	
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
		mockPet = Entities.getPet();
		mockApplication = Entities.getApplication();
		
		petId = Math.abs(random.nextInt());
		bigPetId = BigInteger.valueOf(petId);
		unknownPetId = BigInteger.valueOf(Math.abs(random.nextInt()));
		
		petFinderService = mock(PetFinderConsumer.class);
		when(petFinderService.readPet(eq(bigPetId), eq(petFormat))).thenReturn(mockPet);
		when(petFinderService.readPet(eq(unknownPetId), eq(petFormat))).thenReturn(null);

		mailManager = mock(MailManager.class);
		doNothing().when(mailManager).sendAdoptionApplication(mockApplication, mockPet);
		
		controller = new AdoptionController(this.petFinderService, this.mailManager);
	}
	
	@Test
	public void testAdopt_GET_petExists() {
		String view = controller.adopt_GET(petId.toString(), model);
		
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
	public void testAdopt_GET_petDoesNotExists() {
		String view = controller.adopt_GET(unknownPetId.toString(), model);
		assertNotNull(view);
		assertEquals(View.pet_unavailable.name(), view);
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
