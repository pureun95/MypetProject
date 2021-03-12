package com.test.mypet.adoption;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdoptionController {

	
	//http://localhost:8090/mypet/adoption/list.action
	@RequestMapping(value = "/adoption/list.action", method = { RequestMethod.GET })
	public String auth(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "adoption/list";

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

	
	//http://localhost:8090/mypet/adoption/checklist.action
	@RequestMapping(value="/adoption/checklist.action")
	public String checklist() {
		return "adoption/checklist";		
	}
	
	//http://localhost:8090/mypet/adoption/checklist.action
	@RequestMapping(value="/adoption/writereservation.action")
	public String writeReservation() {
		return "adoption/write_reservation";		
	}

}
