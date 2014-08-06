package org.gaar.web.controller.mvc;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gaar.web.View;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.systemsinmotion.petrescue.mail.MailManager;

public abstract class BaseController {

	@Autowired
	MailManager mailManager;

	@ExceptionHandler(Exception.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public ModelAndView handleExceptions(final Exception exception, HttpServletRequest request, HttpServletResponse response) throws MessagingException {
		ModelAndView mav = new ModelAndView();
		mailManager.send_error(exception, request.getPathInfo());
		switch (request.getPathInfo()) {
		case "/dogs":
			mav.setViewName(View.dogs.name());
			mav.addObject("pets", null);
			mav.addObject("animalType", "Dogs");
			break;
		case "/cats":
			mav.setViewName(View.cats.name());
			mav.addObject("pets", null);
			mav.addObject("animalType", "Cats");
			break;
		case "/cat-carousel":
			mav.setViewName(View.cat_carousel.name());
			mav.addObject("cats", null);
			break;
		case "/dog-carousel":
			mav.setViewName(View.cat_carousel.name());
			mav.addObject("dogs", null);
			break;
		default:
			mav.setViewName(View.support.name());
		}
		return mav;
	}

}
