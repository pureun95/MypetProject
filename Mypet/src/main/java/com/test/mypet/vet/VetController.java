package com.test.mypet.vet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VetController {
	
	@Autowired
	private IVet dao;
	
	@RequestMapping(value="/vet/list.action", method={RequestMethod.GET})
	public String list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		List<VetDTO> list = dao.list();
		
		request.setAttribute("list", list);
		
		return "vet.list";
	}
	
	@RequestMapping(value="/vet/view.action")
	public String view(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
		VetDTO vdto = dao.get(seq);
		request.setAttribute("vdto", vdto);
		
		return "vet.view";
	}
	
	@RequestMapping(value="/vet/add.action")
	public String add() {
		return "vet.add";
	}
	
	@RequestMapping(value="/vet/edit.action")
	public String edit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
		VetDTO vdto = dao.get(seq);
		
		request.setAttribute("vdto", vdto);
		
		return "vet.edit";
	}
	
	@RequestMapping(value="/vet/delete.action")
	public String delete() {
		return "vet.delete";
	}

}
