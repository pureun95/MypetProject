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
	
	@RequestMapping(value="/shelter/add.action")
	public String add() {
		return "shelter.add";
	}
	
	@RequestMapping(value="/shelter/edit.action")
	public String edit() {
		return "shelter.edit";
	}
	
	@RequestMapping(value="/shelter/delete.action")
	public String delete() {
		return "shelter.delete";
	}

}
