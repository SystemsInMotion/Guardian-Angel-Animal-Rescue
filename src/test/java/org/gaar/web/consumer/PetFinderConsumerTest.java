package org.gaar.web.consumer;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetGenderType;
import org.petfinder.entity.PetfinderBreedList;
import org.petfinder.entity.PetfinderPetRecord;

public class PetFinderConsumerTest {

	private static final char EXPECTED_GENDER = 'M';

	PetFinderConsumer consumer;

	private static final String ANIMAL = "animal";
	private static final String EXPECTED_ANIMAL = "cat";

	@Before
	public void before() {
		this.consumer = new PetFinderConsumer();
	}

	@Test
	public void buildQuery() {
		Map<String, Object> params = new HashMap<String, Object>();
		// params.put("animal", AnimalType.CAT.name());
		params.put(ANIMAL, EXPECTED_ANIMAL);
		final String query = this.consumer.buildQuery(params);
		assertTrue(query.contains("&animal=cat"));
	}

	@Test
	public void breedList() {
		final PetfinderBreedList breedList = this.consumer.breedList(EXPECTED_ANIMAL);
		assertNotNull(breedList);
		assertTrue(breedList.getAnimal().equals(EXPECTED_ANIMAL));
	}

	@Test
	public void randomPet() {
		final PetfinderPetRecord randomPet = this.consumer.randomPet(EXPECTED_ANIMAL, null, null, EXPECTED_GENDER,
				"48108", null, "full");
		assertNotNull(randomPet);
		assertEquals(AnimalType.CAT, randomPet.getAnimal());
	}

	@Test
	public void getPet() {
		final PetfinderPetRecord randomPet = this.consumer.randomPet(EXPECTED_ANIMAL, null, null, EXPECTED_GENDER,
				"48108", null, "full");
		assertNotNull(randomPet);
		assertEquals(AnimalType.CAT, randomPet.getAnimal());
		assertEquals(PetGenderType.M, randomPet.getSex());

		final PetfinderPetRecord pet = this.consumer.getPet(randomPet.getId(), null);
		assertNotNull(pet);
		assertEquals(randomPet.getId(), pet.getId());
	}
}
