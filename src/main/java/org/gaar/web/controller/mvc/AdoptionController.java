package org.gaar.web.controller.mvc;

import java.math.BigInteger;

import javax.mail.MessagingException;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.petfinder.entity.AnimalType;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.systemsinmotion.petrescue.mail.MailManager;
import com.systemsinmotion.petrescue.web.PetFinderConsumer;
import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;

@Controller
@RequestMapping("adopt")
public class AdoptionController extends BaseController {

	private static Logger logger = Logger.getLogger(AdoptionController.class);

	private final MailManager mailManager;

	private final PetFinderConsumer petFinderService;

	@Autowired
	public AdoptionController(PetFinderConsumer petFinderService, MailManager mailManager) {
		this.petFinderService = petFinderService;
		this.mailManager = mailManager;
	}

	@RequestMapping(value = "{petId}", method = RequestMethod.GET)
	public String adopt_GET(@PathVariable("petId") String petId, Model model) {
		View view = View.pet_unavailable;
		if (StringUtils.isNotBlank(petId) && StringUtils.isNumeric(petId)) {
			final PetfinderPetRecord pet = this.petFinderService.readPet(new BigInteger(petId), null);
			if (pet != null) {
				logger.info("Retrieved pet : " + pet.getName());
				AdoptionApplication application = buildAdoptionApplication(pet);
				addModelAttributes(model, pet, application);
				view = View.adopt;
			} else {
				logger.info("Pet with id " + petId + " not found.");
			}
		} else {
			logger.info("Invalid pet identifier requested: " + petId);
		}
		return view.name();
	}

	@RequestMapping(value = "{petId}", method = RequestMethod.POST)
	public String adopt_POST(@PathVariable("petId") Integer petId, @Validated AdoptionApplication application,
			Model model) {
		final PetfinderPetRecord pet = this.petFinderService.readPet(BigInteger.valueOf(petId), null);
		try {
			this.mailManager.sendAdoptionApplication(application, pet);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		model.addAttribute("petName", application.getPetName());
		return View.adopt_thanks.name();
	}

	@RequestMapping("thanks")
	public String thanks(Model model) {
		model.addAttribute("petName", "a pet from GAAR");
		return View.adopt_thanks.name();
	}

	private void addModelAttributes(Model model, final PetfinderPetRecord pet, AdoptionApplication application) {
		model.addAttribute("pet", pet);
		model.addAttribute("isCat", AnimalType.CAT.equals(pet.getAnimal()));
		model.addAttribute("isDog", AnimalType.DOG.equals(pet.getAnimal()));
		model.addAttribute("application", application);
	}

	private AdoptionApplication buildAdoptionApplication(final PetfinderPetRecord pet) {
		AdoptionApplication application = new AdoptionApplication();
		application.setPetName(pet.getName());
		application.setAnimalType(pet.getAnimal().value());
		application.setBreeds(pet.getBreeds().getBreed());
		return application;
	}
}
