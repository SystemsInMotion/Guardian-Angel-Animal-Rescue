package org.gaar.web.controller.mvc;

import org.apache.log4j.Logger;
import org.gaar.web.View;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("support")
public class SupportController {

	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(SupportController.class);

	@RequestMapping(method = RequestMethod.GET)
	public String doDefault(Model model) {
		return View.support.name();
	}
}
