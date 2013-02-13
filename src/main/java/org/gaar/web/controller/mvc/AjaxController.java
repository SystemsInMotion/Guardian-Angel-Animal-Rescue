package org.gaar.web.controller.mvc;

import java.util.List;

import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.gaar.web.service.consumer.PetFinderConsumer;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ajax")
public class AjaxController {

	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(AjaxController.class);

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping("cat-carousel")
	public String catCarousel(Model model) {
		final List<PetfinderPetRecord> cats = petFinderService.shelterCats(PetFinderConsumer.shelterId, null,
				null, null, null, null);
		model.addAttribute("cats", cats);
		return View.cat_carousel.name();
	}

	@RequestMapping("dog-carousel")
	public String dogCarousel(Model model) {
		final List<PetfinderPetRecord> dogs = petFinderService.shelterDogs(PetFinderConsumer.shelterId, null,
				null, null, null, null);
		model.addAttribute("dogs", dogs);
		return View.dog_carousel.name();
	}
}
