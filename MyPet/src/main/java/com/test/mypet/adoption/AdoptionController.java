package com.test.mypet.adoption;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdoptionController {

	//http://localhost:8090/mypet/adoption/list.action
	@RequestMapping(value="/adoption/list.action")
	public String list() {
		return "adoption.list";		
	}
	
	
	//http://localhost:8090/mypet/adoption/view.action
	@RequestMapping(value="/adoption/view.action")
	public String view() {
		return "adoption.view";		
	}
		
	
	//http://localhost:8090/mypet/adoption/write.action
	@RequestMapping(value="/adoption/write.action")
	public String write() {
		return "adoption.write";		
	}
	
	
	//http://localhost:8090/mypet/adoption/edit.action
	@RequestMapping(value="/adoption/edit.action")
	public String edit() {
		return "adoption.edit";		
	}
	
	
	//http://localhost:8090/mypet/adoption/del.action
	@RequestMapping(value="/adoption/del.action")
	public String del() {
		return "adoption.del";		
	}

}
