package org.gaar.web.controller.rest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.gaar.web.service.consumer.PetFinderConsumer;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetfinderPetRecord;
import org.petfinder.entity.PetfinderPetRecordList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RemoteController {

	private static final Character ADOPTION_STATUS_NULL = null;
	@SuppressWarnings("unused")
	private static final String BREED_NULL = null;
	private static final int RETURN_COUNT_ALL = 1000;
	private static final Integer RECORD_OFFSET_NULL = null;
	private static final String OUTPUT_NULL = null;
	private static final String FORMAT_NULL = null;
	private static final String SHELTER_ID_GAAR = "MI144";

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping(value = "pet/{petId}", method = GET)
	public @ResponseBody
	PetfinderPetRecord doGetPet(@PathVariable(value = "petId") Integer id) {
		return petFinderService.getPet(BigInteger.valueOf(id), FORMAT_NULL);
	}

	@RequestMapping(value = "pets", method = GET)
	public @ResponseBody
	List<PetfinderPetRecord> doGetPets() {
		return petFinderService.shelterPets(SHELTER_ID_GAAR, ADOPTION_STATUS_NULL,
				RECORD_OFFSET_NULL, RETURN_COUNT_ALL, OUTPUT_NULL, FORMAT_NULL);
	}

	@RequestMapping(value = "cats", method = GET)
	public @ResponseBody
	List<PetfinderPetRecord> doGetCats() {
		final List<PetfinderPetRecord> pets = doGetPets();
		List<PetfinderPetRecord> cats = new ArrayList<PetfinderPetRecord>();
		for (PetfinderPetRecord pet : pets) {
			if (pet.getAnimal().equals(AnimalType.CAT)) {
				cats.add(pet);
			}
		}
		return cats;
	}

	@RequestMapping(value = "dogs", method = GET)
	public @ResponseBody
	List<PetfinderPetRecord> doGetDogs() {
		final List<PetfinderPetRecord> pets = doGetPets();
		List<PetfinderPetRecord> dogs = new ArrayList<PetfinderPetRecord>();
		for (PetfinderPetRecord pet : pets) {
			if (pet.getAnimal().equals(AnimalType.DOG)) {
				dogs.add(pet);
			}
		}
		return dogs;
	}

}
