package org.gaar.web.controller.rest;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.math.BigInteger;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/rest-context.xml" })
public class RemoteControllerTest {

	@Autowired
	private RemoteController remoteController;

	@Test
	public void doGetPets() {
		final List<PetfinderPetRecord> pets = this.remoteController.doGetPets();
		assertNotNull(pets);
	}

	@Test
	public void doGetPet() {
		final List<PetfinderPetRecord> pets = this.remoteController.doGetPets();
		assertNotNull(pets);
		final PetfinderPetRecord pet = pets.get(0);
		assertNotNull(pet);
		final BigInteger id = pet.getId();
		final PetfinderPetRecord petRecord = this.remoteController.doGetPet(id.intValue());
		assertNotNull(petRecord);
		assertTrue(id.equals(petRecord.getId()));
	}

	@Test
	public void doGetCats() {
		final List<PetfinderPetRecord> cats = this.remoteController.doGetCats();
		assertNotNull(cats);
		for (PetfinderPetRecord cat : cats) {
			assertEquals(AnimalType.CAT, cat.getAnimal());
		}
	}

	@Test
	public void doGetDogs() {
		final List<PetfinderPetRecord> dogs = this.remoteController.doGetDogs();
		assertNotNull(dogs);
		for (PetfinderPetRecord dog : dogs) {
			assertEquals(AnimalType.DOG, dog.getAnimal());
		}
	}
}
