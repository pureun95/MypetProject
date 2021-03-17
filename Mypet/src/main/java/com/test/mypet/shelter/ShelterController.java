package com.test.mypet.shelter;

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
public class ShelterController {
	
	@Autowired
	private IShelter dao;
	
	@RequestMapping(value="/shelter/list.action", method= {RequestMethod.GET})
	public String list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		HashMap<String,String> map = new HashMap<String, String>();
		
		String search = request.getParameter("search");
		
		if(!(search == null || search.equals(""))) {
			map.put("search", search);
		}

		/* 페이징 */
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;		//총 게시물 수
		int pageSize = 10;		//한페이지 당 출력 개수
		int totalPage = 0;		//총 페이지 수
		int begin = 0;			//rnum 시작 번호
		int end = 0;			//rnum 끝 번호
		int n = 0;				//페이지바 관련 변수
		int loop = 0;			//페이지바 관련 변수
		int blockSize = 10;		//페이지바 관련 변수
		
		String page = request.getParameter("page");
		
		if (page == null || page == "") {
			//기본 -> page = 1
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		
		/* 페이지바 */
		totalCount = dao.getTotalCount(map); //총 게시물 수
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize); //총 페이지 수
		
		
		String pagebar = "";
		
		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		
		
		//이전 10페이지
		if (n == 1) {
			pagebar += String.format("<li class='disabled'>"
					+ "<a href=\"#!\" aria-label=\"Previous\">"
					+ "<<"
					+ "</a>"
					+ "</li>");
		} else {				
			pagebar += String.format("<li>"
					+ "<a href=\"/mypet/shelter/list.action?page=%d\" aria-label=\"Previous\">"
					+ "<"
					+ "</a>"
					+ "</li>", n - 1);
		}
		
		
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (nowPage == n) {
				pagebar += "<li class='active'>";
			} else {
				pagebar += "<li>";
			}
			
			pagebar += String.format("<a href=\"/mypet/shelter/list.action?page=%d\">%d</a></li>", n, n);
			
			loop++;
			n++;
		}
		
		
		//다음 10페이지로 이동
		if (n > totalPage) {
			pagebar += String.format("<li class='disabled'>"
					+ "<a href=\"#!\" aria-label=\"Next\">"
					+ ">>"
					+ "</a>"
					+ "</li>");
		} else {
			pagebar += String.format("<li>"
					+ "<a href=\"/mypet/shelter/list.action?page=%d\" aria-label=\"Next\">"
					+ ">>"
					+ "</a>"
					+ "</li>", n);
		}
		
		/* List<LocationDTO> location = dao.location(); */
		
		List<ShelterDTO> list = dao.list(map);
		
		request.setAttribute("list", list);
		request.setAttribute("search", search);
		request.setAttribute("pagebar", pagebar);
		request.setAttribute("nowPage", nowPage);
		
		return "shelter.list";
	}
	
	
	
	@RequestMapping(value="/shelter/view.action")
	public String view(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
		List<ShelterDTO> sdto = dao.get(seq);
		request.setAttribute("sdto", sdto);
		
		return "shelter.view";
	}
	
	@RequestMapping(value="/shelter/add.action")
	public String add() {
		return "shelter.add";
	}
	
	@RequestMapping(value="/shelter/edit.action")
	public String edit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
//		ShelterDTO sdto = dao.get(seq);
//		
//		request.setAttribute("sdto", sdto);
		
		return "shelter.edit";
	}
	
	@RequestMapping(value="/shelter/editok.acion", method= {RequestMethod.POST})
	public void editok(HttpServletRequest request, HttpServletResponse response, HttpSession session, ShelterDTO sdto) {
		
		int result = dao.edit(sdto);
		
		try {
			if (result == 1) {
				response.sendRedirect("/mypet/shelter/view.action?seqShelter=" + sdto.getSeqShelter());
			}else {
				response.sendRedirect("/mypet/shelter/edit.action?seqShelter=" + sdto.getSeqShelter());
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	@RequestMapping(value="/shelter/delete.action")
	public String delete() {
		return "shelter.delete";
	}

}
