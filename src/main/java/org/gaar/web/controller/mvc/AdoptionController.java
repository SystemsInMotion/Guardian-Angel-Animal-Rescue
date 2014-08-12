package org.gaar.web.controller.mvc;

import java.math.BigInteger;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.apache.log4j.Logger;
import org.gaar.Entities;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.systemsinmotion.petrescue.mail.MailManager;
import com.systemsinmotion.petrescue.web.PetFinderConsumer;
import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;

@Controller
@RequestMapping("adopt")
public class AdoptionController extends BaseController {

	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(AdoptionController.class);

	@Autowired
	PetFinderConsumer petFinderService;

	@Autowired
	MailManager mailManager;

	@RequestMapping(value = "{petId}", method = RequestMethod.GET)
	public String adopt_GET(@PathVariable("petId") Integer petId, Model model) {
		final PetfinderPetRecord pet = this.petFinderService.readPet(
				BigInteger.valueOf(petId), null);

		AdoptionApplication application = new AdoptionApplication();
		application.setPetName(pet.getName());
		application.setAnimalType(pet.getAnimal().value());
		application.setBreeds(pet.getBreeds().getBreed());

		model.addAttribute("pet", pet);
		model.addAttribute("isCat", AnimalType.CAT.equals(pet.getAnimal()));
		model.addAttribute("isDog", AnimalType.DOG.equals(pet.getAnimal()));
		model.addAttribute("application", application);

		return View.adopt.name();
	}
	
	@RequestMapping(value = "/test/{petId}", method = RequestMethod.GET)
	public @ResponseBody String adoptTest_GET(@PathVariable("petId") Integer petId, Model model) {
		final PetfinderPetRecord pet = this.petFinderService.readPet(
				BigInteger.valueOf(petId), null);

		AdoptionApplication application = Entities.getApplication();
		application.setPetName(pet.getName());
		application.setAnimalType(pet.getAnimal().value());
		application.setBreeds(pet.getBreeds().getBreed());

		model.addAttribute("pet", pet);
		model.addAttribute("isCat", AnimalType.CAT.equals(pet.getAnimal()));
		model.addAttribute("isDog", AnimalType.DOG.equals(pet.getAnimal()));
		model.addAttribute("application", application);

		String response = new String();
		try {
			response = this.mailManager.testEmail(application, pet);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return response;
	}	

	@RequestMapping(value = "{petId}", method = RequestMethod.POST)
	public String adopt_POST(@PathVariable("petId") Integer petId, @Validated AdoptionApplication application,
			Model model) {
		final PetfinderPetRecord pet = this.petFinderService.readPet(
				BigInteger.valueOf(petId), null);
		try {
			this.mailManager.send(application, pet);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
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
}
