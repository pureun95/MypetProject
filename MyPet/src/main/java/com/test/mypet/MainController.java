package com.test.mypet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value="/layout/layout.action")
	public String template1() {
		return "layout.layout";		
	}
	
	@RequestMapping(value="/main.action")
	public String main() {
		return "mypet.main";		
	}
	

	
}
