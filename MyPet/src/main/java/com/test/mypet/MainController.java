package com.test.mypet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value="/template/template.action")
	public String template() {
		return "template.template";		
	}
	
}
