package org.gaar.web.service.consumer;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetGenderType;
import org.petfinder.entity.PetfinderBreedList;
import org.petfinder.entity.PetfinderPetRecord;
import org.petfinder.entity.PetfinderPetRecordList;
import org.petfinder.entity.PetfinderShelterRecord;
import org.petfinder.entity.PetfinderShelterRecordList;
import org.petfinder.web.service.QueryParam;

public class PetFinderConsumerTest {

	private static final String BREED_DOMESTIC_SHORT_HAIR = "Domestic Short Hair";
	private static final String SHELTER_ID_GAAR = "MI144";
	private static final String AGE_ADULT = "Adult";
	private static final String ANIMAL_CAT = "cat";
	private static final String BREED_NULL = null;
	private static final Integer COUNT_NULL = null;
	private static final String FORMAT_NULL = null;
	private static final Character GENDER_MALE = 'M';
	private static final String LOCATION_ZIP = "48108";
	private static final String NAME_NULL = null;
	private static final Integer OFFSET_NULL = null;
	private static final String OUTPUT_FULL = "full";
	private static final String SHELTER_NULL = null;
	private static final String SIZE_NULL = null;
	private static final Character STATUS_NULL = null;

	PetFinderConsumer consumer;

	@Before
	public void before() {
		this.consumer = new PetFinderConsumer();
	}

	@Test
	public void breedList() {
		final PetfinderBreedList breedList = this.consumer.breedList(ANIMAL_CAT, null);
		assertNotNull(breedList);
		assertTrue(breedList.getAnimal().equals(ANIMAL_CAT));
	}

	@Test
	public void buildQuery() {
		Map<QueryParam, Object> params = new TreeMap<QueryParam, Object>();
		// params.put("animal", AnimalType.CAT.name());
		params.put(QueryParam.animal, ANIMAL_CAT);
		params.put(QueryParam.breed, BREED_DOMESTIC_SHORT_HAIR);
		final String token = this.consumer.getAuthData().getToken();
		final String query = this.consumer.buildQuery(token, params, true);
		assertTrue(query.contains("&animal=cat"));
		assertTrue(query.contains("&breed=Domestic%20Short%20Hair"));
	}

	@Test
	public void findPet() {
		final PetfinderPetRecordList petRecordList = this.consumer.findPet(ANIMAL_CAT, BREED_NULL, SIZE_NULL,
				GENDER_MALE, LOCATION_ZIP, AGE_ADULT, OFFSET_NULL, COUNT_NULL, OUTPUT_FULL, FORMAT_NULL);
		assertNotNull(petRecordList);
		final List<PetfinderPetRecord> pets = petRecordList.getPet();
		assertNotNull(pets);
		assertTrue(pets.size() > 0);
		final PetfinderPetRecord pet = pets.get(0);
		assertNotNull(pet);
		assertEquals(AnimalType.CAT, pet.getAnimal());
		assertEquals(PetGenderType.M, pet.getSex());
	}

	@Test
	public void findShelter() {
		final PetfinderShelterRecordList shelterRecordList = this.consumer.findShelter(LOCATION_ZIP, NAME_NULL,
				OFFSET_NULL, COUNT_NULL, FORMAT_NULL);
		assertNotNull(shelterRecordList);

	}

	@Test
	public void getPet() {
		final PetfinderPetRecord randomPet = this.consumer.randomPet(ANIMAL_CAT, BREED_NULL, SIZE_NULL, GENDER_MALE,
				LOCATION_ZIP, SHELTER_NULL, OUTPUT_FULL, FORMAT_NULL);
		assertNotNull(randomPet);
		assertEquals(AnimalType.CAT, randomPet.getAnimal());
		assertEquals(PetGenderType.M, randomPet.getSex());

		final PetfinderPetRecord pet = this.consumer.getPet(randomPet.getId(), null);
		assertNotNull(pet);
		assertEquals(randomPet.getId(), pet.getId());
	}

	@Test
	public void getShelter() {
		final PetfinderShelterRecord shelter = this.consumer.getShelter(SHELTER_ID_GAAR, FORMAT_NULL);
		assertNotNull(shelter);
		assertEquals(SHELTER_ID_GAAR, shelter.getId());
	}

	@Test
	public void randomPet() {
		final PetfinderPetRecord randomPet = this.consumer.randomPet(ANIMAL_CAT, null, null, GENDER_MALE, LOCATION_ZIP,
				null, OUTPUT_FULL, null);
		assertNotNull(randomPet);
		assertEquals(AnimalType.CAT, randomPet.getAnimal());
	}

	@Test
	public void shelterPets() {
		final PetfinderPetRecordList shelterPets = this.consumer.shelterPets(SHELTER_ID_GAAR, STATUS_NULL, OFFSET_NULL,
				COUNT_NULL, OUTPUT_FULL, FORMAT_NULL);
		assertNotNull(shelterPets);
		final List<PetfinderPetRecord> pets = shelterPets.getPet();
		assertNotNull(pets);
		final PetfinderPetRecord pet = pets.get(0);
		assertNotNull(pet);
	}

	@Ignore
	@Test
	public void shelterPetsByBreed() {
		final PetfinderShelterRecordList recordList = this.consumer.shelterPetsByBreed(ANIMAL_CAT,
				BREED_DOMESTIC_SHORT_HAIR, OFFSET_NULL, 5, FORMAT_NULL);
		assertNotNull(recordList);
	}
}
