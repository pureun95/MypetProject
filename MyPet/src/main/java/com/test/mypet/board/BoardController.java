package com.test.mypet.board;

import org.springframework.web.bind.annotation.RequestMapping;

public class BoardController {
	
	//대홍님 방식으로 해본거
	@RequestMapping(value="/volunteerList.action")
	public String template_two() {
		System.out.println("test");
		return "board/volunteerList";		
	}

}
