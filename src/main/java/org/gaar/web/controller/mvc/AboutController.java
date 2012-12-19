package org.gaar.web.controller.mvc;

import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("about")
public class AboutController {

	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(AboutController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String doDefault(Model model) {
		return View.about.name();
	}

	@RequestMapping("team")
	public String onKroger() {
		return View.team.name();
	}

}
