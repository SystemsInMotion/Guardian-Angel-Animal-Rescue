package org.gaar.web.controller.rest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.systemsinmotion.petrescue.web.PetFinderConsumer;

@Controller
public class RemoteController {

	private static final Character ADOPTION_STATUS_NULL = null;
	@SuppressWarnings("unused")
	private static final String BREED_NULL = null;
	private static final int RETURN_COUNT_ALL = 1000;
	private static final Integer RECORD_OFFSET_NULL = null;
	private static final String OUTPUT_NULL = null;
	private static final String FORMAT_NULL = null;

	@Autowired
	PetFinderConsumer petFinderService;

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

	@RequestMapping(value = "pets", method = GET)
	public @ResponseBody
	List<PetfinderPetRecord> doGetPets() {
		return this.petFinderService.shelterPets(ADOPTION_STATUS_NULL, RECORD_OFFSET_NULL, RETURN_COUNT_ALL,
				OUTPUT_NULL, FORMAT_NULL);
	}

}
