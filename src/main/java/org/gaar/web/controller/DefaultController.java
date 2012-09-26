package org.gaar.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DefaultController {

	@RequestMapping(method=RequestMethod.GET)
	public String doDefault(Model model){
		
		String str = "something";
		final byte[] bytes = str.getBytes();
		DigestUtils.md5DigestAsHex(bytes);
		return null;
	}
}
