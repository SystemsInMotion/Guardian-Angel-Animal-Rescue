package org.gaar.web.controller.mvc;

import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.systemsinmotion.petrescue.entity.FormType;
import com.systemsinmotion.petrescue.web.bean.AdoptionApplication;

@Controller
@RequestMapping("admin")
public class AdminController {

	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(AdminController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String doDefault(Model model) {
		return View.admin.name();
	}

	@RequestMapping(value = "form/{form_type}", method = RequestMethod.GET)
	public String onForm(@PathVariable("form_type") String formType, Model model) {
		View view = null;
		switch (FormType.byDescription(formType)) {
		case CAT_ADOPTION:
			catAttributes(model);
			view = View.cat_adoption;
			break;
		case DOG_ADOPTION:
			dogAttributes(model);
			view = View.dog_adoption;
			break;
		case VOLUNTEER:
			view = View.volunteer_application;
			break;
		default:
			view = View.admin;
			break;
		}
		return view.name();
	}

	private void dogAttributes(Model model) {
		PetfinderPetRecord pet = new PetfinderPetRecord();
		pet.setName("this dog");
		model.addAttribute("pet", pet);
		model.addAttribute("isCat", false);
		model.addAttribute("isDog", true);
		model.addAttribute("application", new AdoptionApplication());
	}

	private void catAttributes(Model model) {
		PetfinderPetRecord pet = new PetfinderPetRecord();
		pet.setName("this cat");
		model.addAttribute("pet", pet);
		model.addAttribute("isCat", true);
		model.addAttribute("isDog", false);
		model.addAttribute("application", new AdoptionApplication());
	}
}
