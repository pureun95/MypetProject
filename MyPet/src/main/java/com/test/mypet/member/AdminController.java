//package com.test.mypet.member;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//@Controller
//public class AdminController {
//	
//	@Autowired
//	private IMemberDAO dao;
//
//	@RequestMapping(value = "/admin/auth.action", method = { RequestMethod.GET })
//	public String auth(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
//
//		return "admin/auth";
//
//	}
//	
//	
//	
//	
//	@RequestMapping(value = "/admin/login_admin.action", method = { RequestMethod.POST })
////	@RequestMapping(value = "/admin/login.action", method = { RequestMethod.POST })
//	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session, String id,	String password) { // 1.
//
//		// 1. 데이터 가져오기(id)
//		// 2. 인증 티켓 발급
//		// 3. 시작 페이지로 이동
//
////		MemberDTO dto = new MemberDTO();
//		AdminDTO dto_admin = new AdminDTO();
//
//		System.out.println(id);
//		System.out.println(password);
//
////		dto.setId(id);
////		dto.setPassword(password);
//		
//		dto_admin.setId(id);
//		dto_admin.setPassword(password);
////		
////		MemberDTO mdto = dao.memberLogin(dto);
//		AdminDTO adto = dao.adminLogin(dto_admin);
//
////		System.out.println(mdto.getName());
//		System.out.println(dto_admin.getId());
//
//		try {
//			if ((adto.getSeqAdmin().equals(""))) {
//				response.sendRedirect("/mypet/admin/auth.action");
//				//로그인 실패
////			} else if ((mdto.getSeqUser().equals("")) && !(adto.getSeqAdmin().equals(""))) {
////				response.sendRedirect("/mypet/member/register.action");
////				//관리자로그인 성공. 메인 페이지가 오류남 메인페이지 완성되면 연결하기
////			} else if (!(mdto.getSeqUser().equals("")) && (adto.getSeqAdmin().equals(""))) {
////				response.sendRedirect("/mypet/member/register.action");
////				//유저로그인 성공. 메인 페이지가 오류남 메인페이지 완성되면 연결하기
//			
//			} else {
//				response.sendRedirect("/mypet/member/register.action");
//				//로그인 성공. 메인 페이지가 오류남 메인페이지 완성되면 연결하기
//			}
//
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//
//
//	}
//
//
//}
