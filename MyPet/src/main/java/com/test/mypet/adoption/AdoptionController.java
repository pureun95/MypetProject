package com.test.mypet.adoption;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdoptionController {
	
	@Autowired
	private IReservationDAO dao;


	//http://localhost:8090/mypet/board/template.action
	@RequestMapping(value = "/adoption/list.action", method = { RequestMethod.GET })
	public String adoptionList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "adoption/list";

	}
	
	
	@RequestMapping(value = "/adoption/view.action", method = { RequestMethod.GET })
	public String adoptionView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "adoption/view";

	}
	
	//http://localhost:8090/mypet/adoption/write.action
	@RequestMapping(value="/adoption/write.action")
	public String adoptionwrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		return "adoption/write";		
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
	@RequestMapping(value="/adoption/checklist.action", method={RequestMethod.GET})
	public String checklist(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		session.setAttribute("id", "red1234");
		System.out.println(session.getAttribute("id"));
		return "adoption/checklist";		
	}
	
	//http://localhost:8090/mypet/adoption/writereservation.action
	@RequestMapping(value="/adoption/writereservation.action", method={RequestMethod.GET})
	public String writeReservation(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		//ReservationDAO dao = new ReservationDAO();
		session.setAttribute("seqUser", "6");
		session.setAttribute("id", "red1234");
		System.out.println(session.getAttribute("id"));

		VwReservationDTO dto = dao.getUserInfo(session.getAttribute("id"));
		
		String address = dto.getAddress();
		String temp[] = address.split(" ");
		address = temp[1];
		System.out.println(address);
		
		List<VetDTO> list = dao.getVetList(address);
		
		//회원정보
		request.setAttribute("dto", dto);
		//동물병원
		request.setAttribute("list", list);
		
		return "adoption/write_reservation";		
	}
	
	//http://localhost:8090/mypet/adoption/viewreservation.action
	@RequestMapping(value="/adoption/viewreservation.action", method={RequestMethod.POST})
	public String viewReservation(HttpServletRequest request, HttpServletResponse response, HttpSession session	
			,VwReservationDTO dto) {	//1.
		
		//1. 데이터 가져오기
		//2. 데이터 통해 페이지에 출력
		
				
		request.setAttribute("dto", dto);
		
		return "adoption/view_reservation";		
	}
	//http://localhost:8090/mypet/adoption/sendreservation.action
	@RequestMapping(value="/adoption/sendreservation.action", method={RequestMethod.POST})
	public String sendReservation(HttpServletRequest request, HttpServletResponse response, HttpSession session
			,VwReservationDTO dto) {
		
		dao.insertReservation(dto);
		
		return "adoption/send_reservation";		
	}

	
}
