package com.test.mypet.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	
	//http://localhost:8090/mypet/board/template.action
	@RequestMapping(value = "/board/template.action", method = { RequestMethod.GET })
		public String template(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

			return "board/template";

	}
	
	
	//http://localhost:8090/mypet/board/volunteerList.action
	@RequestMapping(value = "/board/volunteerList.action", method = { RequestMethod.GET })
	public String volunteer_list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/volunteerList";

	}

}
