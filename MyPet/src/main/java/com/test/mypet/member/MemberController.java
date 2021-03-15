package com.test.mypet.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@Autowired
	private IMemberDAO dao;

	@RequestMapping(value = "/member/auth.action", method = { RequestMethod.GET })
	public String auth(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "member/auth";

	}

	@RequestMapping(value = "/member/login.action", method = { RequestMethod.GET })
	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session, String id) { // 1.

		// 1. 데이터 가져오기(id)
		// 2. 인증 티켓 발급
		// 3. 시작 페이지로 이동

		session.setAttribute("id", id); // 2.

		// 3.
		try {
			response.sendRedirect("/mypet/member/auth.action");
		} catch (IOException e) {
			System.out.println(e);
			e.printStackTrace();
		}

	}
	
	
	
	
	
	@RequestMapping(value = "/member/register.action", method = { RequestMethod.GET })
	public String register(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "member/register";

	}
	
	@RequestMapping(value = "/member/register2.action", method = { RequestMethod.GET })
	public String register2(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "member/register2";

	}
	

	
	
	@RequestMapping(value = "/member/chat.action", method = { RequestMethod.GET })
	public String chat(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "member//chat";

	}

	

	// test용 tiles 2번쨰 방식입니다. 나중에 지우면됩니다.!!
//	@RequestMapping(value = "/stat.action")
//	public String template_two() {
//		System.out.println("test");
//		return "statistic/list";
//	}

}
