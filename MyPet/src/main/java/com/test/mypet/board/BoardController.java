package com.test.mypet.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	
	//http://localhost:8090/mypet/board/template_list.action
	@RequestMapping(value = "/board/template_list.action", method = { RequestMethod.GET })
	public String template(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/template_list";

	}
	
	
	
	//http://localhost:8090/mypet/board/template_view.action
	@RequestMapping(value = "/board/template_view.action", method = { RequestMethod.GET })
	public String view(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/template_view";

	}
	
	//http://localhost:8090/mypet/board/template_write.action
	@RequestMapping(value = "/board/template_write.action", method = { RequestMethod.GET })
	public String write(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/template_write";

	}
		
		
	
	//http://localhost:8090/mypet/board/volunteerList.action
	@RequestMapping(value = "/board/volunteerList.action", method = { RequestMethod.GET })
	public String volunteer_list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/volunteerList";

	}
	
	@RequestMapping(value = "/board/faqList.action", method = { RequestMethod.GET })
	public String faqList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/faqList";

	}
	
	@RequestMapping(value = "/board/faqAdd.action", method = { RequestMethod.GET })
	public String faqAdd(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/faqAdd";

	}
	
	@RequestMapping(value = "/board/adoptionreviewlist.action", method = { RequestMethod.GET })
	public String adoptionReviewList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		return "board/faqAdd";
		
	}
	
	@RequestMapping(value = "/board/adoptionreviewview.action", method = { RequestMethod.GET })
	public String adoptionReviewview(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		return "board/faqAdd";
		
	}

}
