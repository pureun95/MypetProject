package com.test.mypet.shelter;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShelterController {
	
	@Autowired
	private IShelter dao;
	
	@RequestMapping(value="/shelter/list.action", method= {RequestMethod.GET})
	public String list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		HashMap<String,String> map = new HashMap<String, String>();
		
		String search = request.getParameter("search");
		
		if(!(search == null || search.equals(""))) {
			map.put("search", search);
		}
		
		/* List<LocationDTO> location = dao.location(); */
		
		List<ShelterDTO> list = dao.list(map);
		
		request.setAttribute("list", list);
		
		return "shelter.list";
	}
	
	
	
	@RequestMapping(value="/shelter/view.action")
	public String view(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
		ShelterDTO sdto = dao.get(seq);
		request.setAttribute("sdto", sdto);
		
		return "shelter.view";
	}
	
	@RequestMapping(value="/shelter/add.action")
	public String add() {
		return "shelter.add";
	}
	
	@RequestMapping(value="/shelter/edit.action")
	public String edit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
		ShelterDTO sdto = dao.get(seq);
		
		request.setAttribute("sdto", sdto);
		
		return "shelter.edit";
	}
	
	@RequestMapping(value="/shelter/editok.acion", method= {RequestMethod.POST})
	public void editok(HttpServletRequest request, HttpServletResponse response, HttpSession session, ShelterDTO sdto) {
		
		int result = dao.edit(sdto);
		
		try {
			if (result == 1) {
				response.sendRedirect("/mypet/shelter/view.action?seqShelter=" + sdto.getSeqShelter());
			}else {
				response.sendRedirect("/mypet/shelter/edit.action?seqShelter=" + sdto.getSeqShelter());
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	@RequestMapping(value="/shelter/delete.action")
	public String delete() {
		return "shelter.delete";
	}

}
