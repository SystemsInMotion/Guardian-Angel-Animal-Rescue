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
import org.junit.runner.RunWith;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetGenderType;
import org.petfinder.entity.PetfinderBreedList;
import org.petfinder.entity.PetfinderPetRecord;
import org.petfinder.entity.PetfinderPetRecordList;
import org.petfinder.entity.PetfinderShelterRecord;
import org.petfinder.entity.PetfinderShelterRecordList;
import org.petfinder.web.service.QueryParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/rest-context.xml" })
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

	@Autowired
	PetFinderConsumer petFinderService;

//	@Before
//	public void before() {
//		this.petFinderService = new PetFinderConsumer();
//	}

	@Ignore
	@Test
	public void breedList() {
		final PetfinderBreedList breedList = this.petFinderService.breedList(ANIMAL_CAT, null);
		assertNotNull(breedList);
		assertTrue(breedList.getAnimal().equals(ANIMAL_CAT));
	}

	@Ignore
	@Test
	public void buildQuery() {
		Map<QueryParam, Object> params = new TreeMap<QueryParam, Object>();
		// params.put("animal", AnimalType.CAT.name());
		params.put(QueryParam.animal, ANIMAL_CAT);
		params.put(QueryParam.breed, BREED_DOMESTIC_SHORT_HAIR);
		final String token = this.petFinderService.getAuthData().getToken();
		final String query = this.petFinderService.buildQuery(token, params, true);
		assertTrue(query.contains("&animal=cat"));
		assertTrue(query.contains("&breed=Domestic%20Short%20Hair"));
	}

	@Ignore
	@Test
	public void findPet() {
		final PetfinderPetRecordList petRecordList = this.petFinderService.findPet(ANIMAL_CAT, BREED_NULL, SIZE_NULL,
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

	@Ignore
	@Test
	public void findShelter() {
		final PetfinderShelterRecordList shelterRecordList = this.petFinderService.findShelter(LOCATION_ZIP, NAME_NULL,
				OFFSET_NULL, COUNT_NULL, FORMAT_NULL);
		assertNotNull(shelterRecordList);

	}

	@Ignore
	@Test
	public void getPet() {
		final PetfinderPetRecord randomPet = this.petFinderService.randomPet(ANIMAL_CAT, BREED_NULL, SIZE_NULL, GENDER_MALE,
				LOCATION_ZIP, SHELTER_NULL, OUTPUT_FULL, FORMAT_NULL);
		assertNotNull(randomPet);
		assertEquals(AnimalType.CAT, randomPet.getAnimal());
		assertEquals(PetGenderType.M, randomPet.getSex());

		final PetfinderPetRecord pet = this.petFinderService.getPet(randomPet.getId(), null);
		assertNotNull(pet);
		assertEquals(randomPet.getId(), pet.getId());
	}

	@Ignore
	@Test
	public void getShelter() {
		final PetfinderShelterRecord shelter = this.petFinderService.getShelter(SHELTER_ID_GAAR, FORMAT_NULL);
		assertNotNull(shelter);
		assertEquals(SHELTER_ID_GAAR, shelter.getId());
	}

	@Ignore
	@Test
	public void randomPet() {
		final PetfinderPetRecord randomPet = this.petFinderService.randomPet(ANIMAL_CAT, null, null, GENDER_MALE, LOCATION_ZIP,
				null, OUTPUT_FULL, null);
		assertNotNull(randomPet);
		assertEquals(AnimalType.CAT, randomPet.getAnimal());
	}

	@Test
	public void shelterPets() {
		List<PetfinderPetRecord> pets = this.petFinderService.shelterPets(SHELTER_ID_GAAR, STATUS_NULL, OFFSET_NULL,
				COUNT_NULL, OUTPUT_FULL, FORMAT_NULL);
		assertNotNull(pets);
		PetfinderPetRecord pet = pets.get(0);
		assertNotNull(pet);
		
		pets = this.petFinderService.shelterPets(SHELTER_ID_GAAR, STATUS_NULL, OFFSET_NULL,
				COUNT_NULL, OUTPUT_FULL, FORMAT_NULL);
		assertNotNull(pets);
		pet = pets.get(0);
		assertNotNull(pet);
	}

	@Ignore
	@Test
	public void shelterPetsByBreed() {
		final PetfinderShelterRecordList recordList = this.petFinderService.shelterPetsByBreed(ANIMAL_CAT,
				BREED_DOMESTIC_SHORT_HAIR, OFFSET_NULL, 5, FORMAT_NULL);
		assertNotNull(recordList);
	}
}
