package org.gaar.web.controller.mvc;

import java.math.BigInteger;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.gaar.web.View;
import org.gaar.web.service.consumer.PetFinderConsumer;
import org.petfinder.entity.PetfinderPetRecord;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;

@Controller
public class DefaultController {

	private static Logger logger = Logger.getLogger(DefaultController.class);

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping(value = "adopt/{petId}", method = RequestMethod.GET)
	public String doAdopt(@PathVariable("petId") Integer petId, Model model) {
		final PetfinderPetRecord pet = petFinderService.readPet(BigInteger.valueOf(petId), null);
		model.addAttribute("pet", pet);
		model.addAttribute("adoptionApplication", new AdoptionApplication());
		return View.adopt.name();
	}

	@RequestMapping(value = "adopt", method = RequestMethod.POST)
	public String doAdopt_POST(@Validated AdoptionApplication application, Model model) {
		System.out.println("application : " + application);
		return "redirect:/app/adopt/11001164";
	}

	@RequestMapping(value = "adoptions", method = RequestMethod.GET)
	public String doAdoptions(Model model) {
		return View.adoptions.name();
	}

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
		final List<PetfinderPetRecord> cats = petFinderService.shelterCats(PetFinderConsumer.SHELTER_ID_GAAR, null,
				null, null, null, null);
		model.addAttribute("cats", cats);

		final List<PetfinderPetRecord> dogs = petFinderService.shelterDogs(PetFinderConsumer.SHELTER_ID_GAAR, null,
				null, null, null, null);
		model.addAttribute("dogs", dogs);

		return View.home.name();
	}

	@RequestMapping(value = "like", method = RequestMethod.GET)
	public String doLike(Model model) {
		return View.like.name();
	}

	@RequestMapping(value = "mail", method = RequestMethod.GET)
	public @ResponseBody
	String doMail() {
		// Recipient's email ID needs to be mentioned.
		String to = "keithskronek@gmail.com";

		// Sender's email ID needs to be mentioned
		String from = "keith@skronek.org";

		// Assuming you are sending email from localhost
		String host = "localhost";

		// Get system properties
		Properties properties = System.getProperties();

		// Setup mail server
		properties.setProperty("mail.smtp.host", host);

		// Get the default Session object.
		Session session = Session.getDefaultInstance(properties);

		try {
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Set Subject: header field
			message.setSubject("This is the Subject Line!");

			// Now set the actual message
			message.setText("This is actual message");

			// Send message
			Transport.send(message);
			System.out.println("Sent message successfully....");
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
		return "success";
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
