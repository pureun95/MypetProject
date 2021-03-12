package com.test.mypet.vet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VetController {
	
	@RequestMapping(value="/vet/list.action")
	public String list() {
		return "vet.list";
	}
	
	@RequestMapping(value="/vet/view.action")
	public String view() {
		return "vet.view";
	}
	
	@RequestMapping(value="/vet/add.action")
	public String add() {
		return "vet.add";
	}
	
	@RequestMapping(value="/vet/edit.action")
	public String edit() {
		return "vet.edit";
	}

}
