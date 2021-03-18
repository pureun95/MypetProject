package com.test.mypet.vet;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.mypet.shelter.LocationDTO;

@Controller
public class VetController {
	
	@Autowired
	private IVet dao;
	
	@RequestMapping(value="/vet/list.action", method={RequestMethod.GET})
	public String list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		String search = request.getParameter("search");
		
		if(!(search == null || search.contentEquals(""))) {
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
					+ "<a href=\"/mypet/vet/list.action?page=%d\" aria-label=\"Previous\">"
					+ "<<"
					+ "</a>"
					+ "</li>", n - 1);
		}
		
		
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (nowPage == n) {
				pagebar += "<li class='active'>";
			} else {
				pagebar += "<li>";
			}
			
			pagebar += String.format("<a href=\"/mypet/vet/list.action?page=%d\">%d</a></li>", n, n);
			
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
					+ "<a href=\"/mypet/vet/list.action?page=%d\" aria-label=\"Next\">"
					+ ">>"
					+ "</a>"
					+ "</li>", n);
		}
		
		

		
		List<VetDTO> list = dao.list(map);
		
		request.setAttribute("list", list);
		request.setAttribute("search", search);
		request.setAttribute("pagebar", pagebar);
		request.setAttribute("nowPage", nowPage);
		
		return "vet.list";
	}
	
	@RequestMapping(value="/vet/view.action")
	public String view(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
		VetDTO vdto = dao.get(seq);
		request.setAttribute("vdto", vdto);
		request.setAttribute("seqVet", seq);
		
		return "vet.view";
	}
	
	@RequestMapping(value="/vet/add.action")
	public String add() {
		return "vet.add";
	}
	
	@RequestMapping(value="/vet/addok.action", method = { RequestMethod.POST })
	public void addok(HttpServletRequest request, HttpServletResponse response, HttpSession session, VetDTO vdto) {
		
	
		int result = dao.add(vdto);
		
		try {
			
			if(result == 1) {
				response.sendRedirect("/mypet/vet/list.action");
			}else {
				response.sendRedirect("/mypet/vet/add.action");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
	}
	
	@RequestMapping(value="/vet/edit.action")
	public String edit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		
		VetDTO vdto = dao.get(seq);
		
		request.setAttribute("vdto", vdto);
		
		return "vet.edit";
	}
	
	@RequestMapping(value="/vet/editok.action", method = { RequestMethod.POST })
	public void editok(HttpServletRequest request, HttpServletResponse response, HttpSession session, VetDTO vdto) {
		
		int result = dao.edit(vdto);
		
		try {
			if(result == 1) {
				response.sendRedirect("/mypet/vet/view.action?seqVet=" + vdto.getSeqVet());
			}else {
				response.sendRedirect("/mypet/vet/edit.action?seqVet=" + vdto.getSeqVet());
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	@RequestMapping(value="/vet/deleteok.action")
	public String delete(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seq) {
		return "vet.delete";
	}

}
