package org.gaar.web.controller.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public abstract class BaseController {

	@ExceptionHandler
	public @ResponseBody String handleExceptions() {

		return null;
	}

}
