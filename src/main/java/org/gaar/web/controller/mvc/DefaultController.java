package org.gaar.web.controller.mvc;

import java.math.BigInteger;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.systemsinmotion.petrescue.web.PetFinderConsumer;

@Controller
public class DefaultController extends BaseController {

	private static Logger logger = Logger.getLogger(DefaultController.class);

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping("brokenWings")
	public String brokenWings() {
		return View.brokenWings.name();
	}

	@RequestMapping("cats")
	public String cats(Model model) {
		List<PetfinderPetRecord> cats = null;
		cats = this.petFinderService.shelterCats();
		model.addAttribute("pets", cats);
		model.addAttribute("animalType", "Cats");
		return View.cats.name();
	}

	@RequestMapping("contact")
	public String contact(Model model) {
		return View.contact.name();
	}

	@RequestMapping("dogs")
	public String dogs(Model model) {
		List<PetfinderPetRecord> dogs = null;
		dogs = this.petFinderService.shelterDogs();
		model.addAttribute("pets", dogs);
		model.addAttribute("animalType", "Dogs");
		return View.dogs.name();
	}

	@RequestMapping("email")
	private String email() {
		return View.email.name();
	}

	@RequestMapping("faq")
	public String faq(Model model) {
		return View.faq.name();
	}

	@RequestMapping("home")
	public String home(Model model) {
		return View.home.name();
	}

	@RequestMapping("like")
	public String like(Model model) {
		return View.like.name();
	}

	@RequestMapping(method = RequestMethod.GET)
	public String onDefault(Model model) {
		return home(model);
	}

	@RequestMapping("pet/{petId}")
	public String pet(@PathVariable("petId") String petId, Model model) {
		View view = View.pet_unavailable;
		if (StringUtils.isNotBlank(petId) && StringUtils.isNumeric(petId)) {
			final PetfinderPetRecord pet = this.petFinderService.readPet(new BigInteger(petId), null);
			if (pet != null) {
				logger.info("Retrieved pet : " + pet.getName());
				model.addAttribute("pet", pet);
				view = View.pet;
			} else {
				logger.info("Pet with id " + petId + " not found.");
			}
		} else {
			logger.info("Invalid pet identifier requested: " + petId);
		}
		return view.name();
	}

	@RequestMapping("volunteer")
	public String volunteer(Model model) {
		return View.volunteer.name();
	}
}
