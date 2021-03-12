package com.test.mypet.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	//예약신청서 목록보기
	@RequestMapping(value="/mypage/reservationlist.action")
	public String reservationList() {
		return "mypage/reservation_list";		
	}

	
}
