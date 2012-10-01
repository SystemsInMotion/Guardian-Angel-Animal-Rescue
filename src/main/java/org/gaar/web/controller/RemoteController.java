package org.gaar.web.controller;

import java.math.BigInteger;

import org.gaar.web.service.consumer.PetFinderConsumer;
import org.petfinder.entity.PetfinderPetRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("rest")
public class RemoteController {

	@Autowired
	PetFinderConsumer petFinderService;

	@RequestMapping(value = "pet", method = RequestMethod.GET)
	public @ResponseBody
	PetfinderPetRecord getPet(@RequestParam(value = "animalId") BigInteger animalId,
			@RequestParam(value = "format", required = false) String format) {
		return petFinderService.getPet(animalId, format);
	}
}
