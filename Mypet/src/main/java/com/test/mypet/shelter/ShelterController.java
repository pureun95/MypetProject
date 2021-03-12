package com.test.mypet.shelter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShelterController {
	
	@RequestMapping(value="/shelter/list.action")
	public String list() {
		return "shelter.list";
	}
	
	@RequestMapping(value="/shelter/view.action")
	public String view() {
		return "shelter.view";
	}

}
