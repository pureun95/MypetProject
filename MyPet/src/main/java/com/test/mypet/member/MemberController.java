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

//	@Autowired
//	private MemberDAO dao;
//	
//	@Autowired
//	MemberService memberService;

	@Autowired
	private IMemberDAO dao;

	@RequestMapping(value = "/member/auth.action", method = { RequestMethod.GET })
	public String auth(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "member/auth";

	}


	@RequestMapping(value = "/member/login.action", method = { RequestMethod.POST })
	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session, String id,	String password) { // 1.

		// 1. 데이터 가져오기(id)
		// 2. 인증 티켓 발급
		// 3. 시작 페이지로 이동
		
		session.setAttribute("id", id);

		MemberDTO dto = new MemberDTO();
//		AdminDTO dto_admin = new AdminDTO();

		System.out.println(id);
		System.out.println(password);

		dto.setId(id);
		dto.setPassword(password);
		
//		dto_admin.setId(id);
//		dto_admin.setPassword(password);
//		
		MemberDTO mdto = dao.memberLogin(dto);
//		AdminDTO adto = dao.adminLogin(dto_admin);

		System.out.println(mdto.getName());
//		System.out.println(dto_admin.getId());

		try {
			if (mdto.getSeqUser().equals("") || mdto.getSeqUser() == null) {
				response.sendRedirect("/mypet/member/auth.action");
				//로그인 실패
			} else {
//				response.sendRedirect("/mypet/member/register.action");
				response.sendRedirect("/mypet/main.action");
				//로그인 성공.
			}
		} catch (Exception e) {
			System.out.println(e);
		}


	}

	
	//
	
	
	@RequestMapping(value = "/member/login_admin.action", method = { RequestMethod.POST })
	public void login_admin(HttpServletRequest request, HttpServletResponse response, HttpSession session, String id,	String password) { // 1.

		// 1. 데이터 가져오기(id)
		// 2. 인증 티켓 발급
		// 3. 시작 페이지로 이동
		
		session.setAttribute("id", id);


		
		AdminDTO dto_admin = new AdminDTO();

		System.out.println(id);
		System.out.println(password);

		
		dto_admin.setId(id);
		dto_admin.setPassword(password);
		
//		dto_admin.setSeqAdmin(admindto.getSeqAdmin());////
//		
		
		AdminDTO adto = dao.adminLogin(dto_admin);

		
		System.out.println(dto_admin.getId());
		
		

		try {
			if (adto.getSeqAdmin().equals("")) {
				response.sendRedirect("/mypet/member/auth.action");
				//로그인 실패
			} else {
				response.sendRedirect("/mypet/main.action");
				//로그인 성공.
			}
		} catch (Exception e) {
			System.out.println(e);
		}


	}
	
	
	
	@RequestMapping(value = "/member/logout.action", method = { RequestMethod.GET })
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		// 1. 인증 티켓 폐기
		// 2. 시작 페이지로 이동

		session.removeAttribute("id");

		// 2.
		try {
			response.sendRedirect("/mypet/member/auth.action");
		} catch (IOException e) {
			System.out.println(e);
			e.printStackTrace();
		}

	}
	
	
	
	
	//
	
	
	
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
