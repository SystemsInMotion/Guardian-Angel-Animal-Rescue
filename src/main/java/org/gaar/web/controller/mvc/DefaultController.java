package org.gaar.web.controller.mvc;

import java.math.BigInteger;

import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.gaar.web.service.consumer.PetFinderConsumer;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DefaultController {

	private static Logger logger = Logger.getLogger(DefaultController.class);

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping(value = "brokenWings", method = RequestMethod.GET)
	public String doBrokenWings() {
		return View.brokenWings.name();
	}

	@RequestMapping(value = "contact", method = RequestMethod.GET)
	public String doContact(Model model) {
		return View.contact.name();
	}

	@RequestMapping(method = RequestMethod.GET)
	public String doDefault(Model model) {
		return doHome(model);
	}

	@RequestMapping(value = "faq", method = RequestMethod.GET)
	public String doFaq(Model model) {
		return View.faq.name();
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String doHome(Model model) {
		return View.home.name();
	}

	@RequestMapping(value = "like", method = RequestMethod.GET)
	public String doLike(Model model) {
		return View.like.name();
	}

	@RequestMapping(value = "pet/{petId}", method = RequestMethod.GET)
	public String doPet(@PathVariable("petId") Integer petId, Model model) {
		final PetfinderPetRecord pet = petFinderService.readPet(BigInteger.valueOf(petId), null);
		logger.info("pet : " + pet);
		model.addAttribute("pet", pet);
		return View.pet.name();
	}

	@RequestMapping(value = "volunteer", method = RequestMethod.GET)
	public String doVolunteer(Model model) {
		return View.volunteer.name();
	}
}
