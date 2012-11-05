package org.gaar.web.controller.mvc;

import java.math.BigInteger;
import java.util.List;

import org.gaar.web.View;
import org.gaar.web.service.consumer.PetFinderConsumer;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;

@Controller
public class DefaultController {

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping(method = RequestMethod.GET)
	public String doDefault(Model model) {
		return doHome(model);
	}

	@RequestMapping(value = "adopt/{petId}", method = RequestMethod.GET)
	public String doAdopt(@PathVariable("petId") Integer petId, Model model) {
		final PetfinderPetRecord pet = petFinderService.readPet(BigInteger.valueOf(petId), null);
		model.addAttribute("pet", pet);
		return View.adopt.name();
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String doHome(Model model) {
		final List<PetfinderPetRecord> cats = petFinderService.shelterCats(PetFinderConsumer.SHELTER_ID_GAAR, null,
				null, null, null, null);
		model.addAttribute("cats", cats);

		final List<PetfinderPetRecord> dogs = petFinderService.shelterDogs(PetFinderConsumer.SHELTER_ID_GAAR, null,
				null, null, null, null);
		model.addAttribute("dogs", dogs);

		return View.home.name();
	}

	@RequestMapping(value = "pet/{petId}", method = RequestMethod.GET)
	public String doPet(@PathVariable("petId") Integer petId, Model model) {
		final PetfinderPetRecord pet = petFinderService.readPet(BigInteger.valueOf(petId), null);
		model.addAttribute("pet", pet);
		return View.pet.name();
	}

	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String doAbout(Model model) {
		return View.about.name();
	}

	@RequestMapping(value = "adoptions", method = RequestMethod.GET)
	public String doAdoptions(Model model) {
		return View.adoptions.name();
	}
	
	@RequestMapping(value = "adopt", method = RequestMethod.POST)
	public String doAdoptions_POST(@Validated AdoptionApplication application, Model model){
		return  "redirect:/";
	}

	@RequestMapping(value = "contact", method = RequestMethod.GET)
	public String doContact(Model model) {
		return View.contact.name();
	}

	@RequestMapping(value = "faq", method = RequestMethod.GET)
	public String doFaq(Model model) {
		return View.faq.name();
	}

	@RequestMapping(value = "like", method = RequestMethod.GET)
	public String doLike(Model model) {
		return View.like.name();
	}

	@RequestMapping(value = "volunteer", method = RequestMethod.GET)
	public String doVolunteer(Model model) {
		return View.volunteer.name();
	}
}
