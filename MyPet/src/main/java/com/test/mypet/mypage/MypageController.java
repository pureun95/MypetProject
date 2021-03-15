package com.test.mypet.mypage;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.mypet.adoption.IReservationDAO;
import com.test.mypet.adoption.VwReservationDTO;

@Controller
public class MypageController {
	
	@Autowired
	private IReservationDAO dao;
	
	//예약신청서 목록보기
	@RequestMapping(value="/mypage/reservationlist.action")
	public String reservationList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		
		List<VwReservationDTO> list = dao.getMyReservationList((String)session.getAttribute("seqUser"));
		
		
		
		request.setAttribute("list", list);
		
		return "mypage/reservation_list";		
	}
	
	//예약신청서 세부정보보기
	@RequestMapping(value="/mypage/reservationview.action")
	public String reservationView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		return "mypage/reservation_view";		
	}
	
	

	
}
