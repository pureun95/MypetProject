package com.test.mypet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value="/layout/layout.action")
	public String template1() {
		return "layout.layout";		
	}
	
	@RequestMapping(value="/layout/content.action")
	public String template2() {
		return "layout/content";		
	}
	

	
}
