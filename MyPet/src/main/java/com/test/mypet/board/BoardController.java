package com.test.mypet.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	

	@Autowired
	IAdoptionReviewDAO ardao;
	
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

		return "board/volunteer_list";

	}
	
	
	//http://localhost:8090/mypet/board/volunteerView.action
	@RequestMapping(value = "/board/volunteerView.action", method = { RequestMethod.GET })
	public String volunteer_view(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/volunteer_view";

	}
		
		
	//http://localhost:8090/mypet/board/volunteerList.action
	@RequestMapping(value = "/board/volunteerWrite.action", method = { RequestMethod.GET })
	public String volunteer_write(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/volunteer_write";

	}
	
	@Autowired
	private IFaq dao;
	
	@RequestMapping(value = "/board/faqList.action", method = { RequestMethod.GET })
	public String faqList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		List<FaqDTO> list = dao.list();
		
		request.setAttribute("list", list);
		
		return "board/faqList";

	}
	
	@RequestMapping(value = "/board/faqAdd.action", method = { RequestMethod.GET })
	public String faqAdd(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/faqAdd";

	}

	@RequestMapping(value = "/board/faqEdit.action", method = { RequestMethod.GET })
	public String faqEdit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {

		FaqDTO fdto = dao.get(seq);
		
		request.setAttribute("fdto", fdto);
		
		return "board/faqEdit";

	}
	
	@RequestMapping(value = "/board/faqDelete.action", method = { RequestMethod.GET })
	public String faqDelete(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/faqDelete";

	}
  
   
  
//푸른님
   
   @Autowired // 의존 주입하기
	private INoticeDAO noticeDAO;
   
   @RequestMapping(value = "/board/noticeList.action", method = { RequestMethod.GET })
   public String noticeList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
	   
	   List<NoticeDTO> noticeList = noticeDAO.noticeList();

		request.setAttribute("noticeList", noticeList);
		
		
		
		
	   
      return "board/noticeList";
      
   }
   
   @RequestMapping(value = "/board/noticeView.action", method = { RequestMethod.GET })
   public String noticeView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
      return "board/noticeView";
      
   }
   
   @RequestMapping(value = "/board/noticeWrite.action", method = { RequestMethod.GET })
   public String noticeWrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
      return "board/noticeWrite";
      
   }
   
   @RequestMapping(value = "/board/noticeEdit.action", method = { RequestMethod.GET })
   public String noticeEdit(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      
      return "board/noticeEdit";
   
   }
      
//준오님
   
   @RequestMapping(value = "/board/adoptionreviewlist.action", method = { RequestMethod.GET })
   public String adoptionReviewList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	   
	   List<AdoptionReviewDTO> rlist = ardao.getList();
	   
	   request.setAttribute("rlist", rlist);
	   
	   return "board/adoptionreviewList";
	   
   }
   
   @RequestMapping(value = "/board/adoptionreviewview.action", method = { RequestMethod.GET })
   public String adoptionReviewView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	   
	   return "board/adoptionreviewView";
	   
   }
   @RequestMapping(value = "/board/adoptionreviewwrite.action", method = { RequestMethod.GET })
   public String adoptionReviewWrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	   
	   return "board/adoptionreviewWrite";
	   
   }
   
   @RequestMapping(value = "/board/adoptionreviewedit.action", method = { RequestMethod.GET })
   public String adoptionReviewEdit(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	   
	   return "board/adoptionreviewEdit";
	   
   }
   
   

}
