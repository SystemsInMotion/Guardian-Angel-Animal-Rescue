package org.gaar.web.controller;

import org.gaar.web.View;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DefaultController {

	@RequestMapping(method = RequestMethod.GET)
	public String doHome(Model model) {
		return View.home.name();
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String doAbout(Model model) {
		return View.about.name();
	}
	
	@RequestMapping(value = "/adoptions", method = RequestMethod.GET)
	public String doAdoptions(Model model) {
		return View.adoptions.name();
	}
}
