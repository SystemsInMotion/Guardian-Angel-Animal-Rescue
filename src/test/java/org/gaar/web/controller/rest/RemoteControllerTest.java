package org.gaar.web.controller.rest;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:test-context.xml" })
public class RemoteControllerTest {

	@Autowired
	private RemoteController remoteController;

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

	@Test
	public void doGetPets() {
		final List<PetfinderPetRecord> pets = this.remoteController.doGetPets();
		assertNotNull(pets);
	}
}
