package org.gaar.web.controller.mvc;

import java.util.List;

import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.systemsinmotion.petrescue.web.PetFinderConsumer;

@Controller
@RequestMapping("ajax")
public class AjaxController extends BaseController {

	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(AjaxController.class);

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping("cat-carousel")
	public String catCarousel(Model model) {
		List<PetfinderPetRecord> cats = null;
		cats = this.petFinderService.shelterCats();
		model.addAttribute("cats", cats);
		return View.cat_carousel.name();
	}

	@RequestMapping("dog-carousel")
	public String dogCarousel(Model model) {
		List<PetfinderPetRecord> dogs = null;
		dogs = this.petFinderService.shelterDogs();
		model.addAttribute("dogs", dogs);
		return View.dog_carousel.name();
	}
}
