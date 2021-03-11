package com.test.mypet.adoption;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdoptionController {

	@RequestMapping(value="/adoption.action")
	public String template() {
		return "adoption";		
	}

}
