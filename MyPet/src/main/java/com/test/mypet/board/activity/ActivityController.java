package com.test.mypet.board.activity;

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
public class ActivityController {

	@Autowired
	private IActivityDAO dao;
	
	
	@RequestMapping(value="activity/list.action", method= {RequestMethod.GET})
	public String act_list(HttpServletRequest request, 
			HttpServletResponse response, 
			HttpSession session,String page) {
		//list.action?page=10
		HashMap<String, String> map = new HashMap<String, String>();

		String search = request.getParameter("search");

		if (!(search == null || search.trim().equals(""))) {
			map.put("search", search);
		}

		// 페이징
		int nowPage = 0; // 현재 페이지 번호
		int totalCount = 0; // 총 게시물 수
		int pageSize = 10; // 한페이지 당 출력 개수
		int totalPage = 0; // 총 페이지 수
		int begin = 0; // rnum 시작 번호
		int end = 0; // rnum 끝 번호
		int n = 0; // 페이지바 관련 변수
		int loop = 0; // 페이지바 관련 변수
		int blockSize = 10; // 페이지바 관련 변수

		

		if (page == null || page == "") {
			// 기본 -> page = 1
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}

		System.out.println("nowPage"+nowPage);
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		

		totalCount = dao.totalCount(map); //총 게시물 수
				
		System.out.println("totalcount " + totalCount);
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize); //총 페이지 수
		
		
		String pagebar = "";
		
		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		

		
		// 이전10페이지
		if (n == 1) {
			pagebar += String.format("<li>"
					+ "<a href=\"/mypet/activity/list.action\">"
					+ "이전</a></li>");
		} else {				
			pagebar += String.format("<li"
					+ "<a href=\"/mypet/activity/list.action?page=%d\">"
					+ "이전</a></li>"
					, n - 1);
		}
		
//<li class="page-item"><a class="page-link page-a" href="">1</a></li>
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (nowPage == n) {
				pagebar += "<li>";
			} else {
				pagebar += "<li>";
			}
			
			pagebar += String.format("<a href=\"/mypet/activity/list.action?page=%d\">%d</a></li>", n, n);
			
			loop++;
			n++;
		}
		
						
		if (n > totalPage) {
			pagebar += String.format(
			"<li><a href=\"/mypet/activity/list.action\">"
			+ "다음</a></li> ");
		} else {
			pagebar += String.format(
			"<li><a href=\"/mypet/activity/list.action?page=%d\">"
			+ "다음</a></li>", n);
		}
		
		

		
	
		
		List<ActivityDTO> list = dao.list(map);
		
		for(ActivityDTO dto  : list) {
			dto.setActDate(dto.getActDate().substring(0,10));
		}
		
		
		request.setAttribute("list", list);
		request.setAttribute("search", search);
		request.setAttribute("pagebar", pagebar);
		request.setAttribute("nowPage", nowPage);
		
		//request.setAttribute("pageMaker", pageMaker);
		
		
		
		
		return "board/act_list";
	}
	
	
	@RequestMapping(value="activity/view.action")
	public String act_view(HttpServletRequest request, 
			HttpServletResponse response, 
			HttpSession session, String seqActivity) {
		System.out.println("seqActivity"+seqActivity);
		
		ActivityDTO dto = dao.view(seqActivity); 
		
		dto.setActDate(dto.getActDate().substring(0,10));
		
		int pre= Integer.valueOf(seqActivity)-1;
		int next= Integer.valueOf(seqActivity)+1;
		
		ActivityDTO preDto = dao.view(pre+""); 
		ActivityDTO nextDto = dao.view(next+""); 
		
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("preDto", preDto);
		request.setAttribute("nextDto", nextDto);
		
		return "board/act_view";
	}
	
}
