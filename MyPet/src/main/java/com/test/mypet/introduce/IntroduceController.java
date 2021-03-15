package com.test.mypet.introduce;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IntroduceController {

	@RequestMapping(value = "/mypetintroduce/introduce.action", method = { RequestMethod.GET })
	public String introduce(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "mypetintroduce/introduce";

	}
	
}
