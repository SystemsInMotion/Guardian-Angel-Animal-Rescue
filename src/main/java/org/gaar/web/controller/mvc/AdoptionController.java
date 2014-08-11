package org.gaar.web.controller.mvc;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.systemsinmotion.petrescue.mail.MailManager;
import com.systemsinmotion.petrescue.web.PetFinderConsumer;
import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;
import com.systemsinmotion.petrescue.web.bean.PreviousPet;
import com.systemsinmotion.petrescue.web.bean.Vet;

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

		AdoptionApplication application = new AdoptionApplication();
		application.setPetName(pet.getName());
		application.setAnimalType(pet.getAnimal().value());
		application.setBreeds(pet.getBreeds().getBreed());

		model.addAttribute("pet", pet);
		model.addAttribute("isCat", AnimalType.CAT.equals(pet.getAnimal()));
		model.addAttribute("isDog", AnimalType.DOG.equals(pet.getAnimal()));
		model.addAttribute("application", application);

		// Testing Attr
		application.setFirstName("Bob");
		application.setLastName("Law");
		application.setAddress1("1234 Unknown Av");
		application.setAddress2("Apt -1");
		application.setZipCode( "48197");
		application.setCity("Ypsitucky");
		application.setHomePhone("2342342345");
		application.setMobilePhone("2342342345");
		application.setEmail("bob@law.com");
		application.setEmailConfirm("bob@law.com");
		
		List<Vet> vets = new ArrayList<Vet>();
		Vet vet = new Vet();
		vet.setName("Mr. Vet");
		vet.setPhone("2342342345");
		vets.add(vet);
		Vet vet2 = new Vet();
		vet2.setName("Mr. Rival");
		vet2.setPhone("2342342346");
		vets.add(vet2);
		
		application.setVets(vets);
		
		application.setLivingSituation("rent");
		application.setPetsAllowed(true);
		application.setPetsAllowedProof(true);
		
		application.setYearsLived("10");
		application.setMonthsLived("0");
		application.setHouseholdMemberCount(3);
		application.setHouseholdMemberAges(Arrays.asList(new Integer[]{10,15,25}));
		application.setFamilyAware(false);
		application.setFamilyNotAwareReason("Because they smell and I don't talk to them");
		application.setCaretaker("Gramama");
		
		application.setAwareOfUnknownIssues(true);
		application.setAgreedToHomeVisit(false);
		
		application.setCurrentPetCount(2);
		
		application.setPreviousPetCount(2);
		List<PreviousPet> prevPets = new ArrayList<PreviousPet>();
		PreviousPet ppet1= new PreviousPet();
		ppet1.setBreed("Doggy");
		ppet1.setAge(5);
		ppet1.setIndoor(true);
		ppet1.setName("Spike");
		PreviousPet ppet2= new PreviousPet();
		ppet2.setBreed("Kitty Cat");
		ppet2.setAge(10);
		ppet2.setIndoor(false);
		ppet2.setName("Meow");
		prevPets.add(ppet1);
		prevPets.add(ppet2);
		application.setPreviousPets(prevPets);
		
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
