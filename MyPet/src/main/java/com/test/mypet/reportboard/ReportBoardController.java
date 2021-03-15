package com.test.mypet.reportboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportBoardController {
	
	@Autowired
	private IReportBoardDAO dao;
	
	

	@RequestMapping(value = "/reportBoard/list.action", method = { RequestMethod.GET })
	public String reportList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		List<ReportBoardDTO> list = dao.list();
		
		request.setAttribute("list", list);
		
		return "reportBoard.list";
	}
	
	@RequestMapping(value = "/reportBoard/view.action", method = { RequestMethod.GET })
	public String reportView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		
		return "reportBoard.view";
	}
	
	

}
