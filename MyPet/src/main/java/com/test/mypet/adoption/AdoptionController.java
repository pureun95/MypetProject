package com.test.mypet.adoption;

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
public class AdoptionController {
	
	@Autowired
	private IReservationDAO dao;

	@Autowired
	private IAdoptionDAO adao;


	//http://localhost:8090/mypet/adoption/list.action
	@RequestMapping(value = "/adoption/list.action", method = { RequestMethod.GET })
	public String adoptionList(HttpServletRequest request, HttpServletResponse response, HttpSession session, String search, String species) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("search", search);
		map.put("species", species);
		
		
		//페이징
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;		//총 게시물 수
		int pageSize = 9;		//한페이지당 출력 개수
		int totalPage = 0;		//총 페이지 수
		int begin = 0;			//rnum 시작 번호
		int end = 0;			//rnum 끝 번호
		int n = 0;				//페이지바 관련 변수
		int loop = 0;			//페이지바 관련 변수
		int blockSize = 9;		//페이지바 관련 변수
								
								
		String page = request.getParameter("page");
								
		if (page == null || page == "") {
			//기본 -> page = 1
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
								
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize -1;
								
		//우리가만든 해쉬맵은 스트링이기 때문에 begin과 end도 문자열로 만들어서 넘기기.
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		List<AdoptionDTO> list = adao.getList(map);
		
		
		//이미지는 하나만 넣을 것
		for (int i=0; i<list.size(); i++) {
		
			if(list.get(i).getImg() == null) {
				
				//더미데이터 이미지
				/*
				 * String pic = Integer.toString((int)(Math.random() * 10) + 1);
				 * list.get(i).setImg(pic +".jpg");
				 */
				
				list.get(i).setImg("nopic.png");
				
			} else {
				
				String[] img = list.get(i).getImg().split(",");
				
				list.get(i).setImg(img[0]);
			}
			
			
			
		}
		
		
		totalCount = adao.getTotalCount(map);
		
		System.out.println("카운트!!!!!!!!!!" + totalCount);
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
						
		String pagebar = "";
						
		loop = 1;
		n = ((nowPage -1) / blockSize) * blockSize +1;
						
						
		if ( n == 1 ) {
			pagebar += String.format("<li class='disabled'>"
									+ "            <a href=\"#!\" aria-label=\"Previous\">"
									+ "                <span aria-hidden=\"true\">&laquo;</span>"
									+ "            </a>"
									+ "        </li>");			
		} else {
			pagebar += String.format("<li>"
									+ "            <a href=\"/mypet/adoption/list.action?species=%s&page=%d\" aria-label=\"Previous\">"
									+ "                <span aria-hidden=\"true\">&laquo;</span>"
									+ "            </a>"
									+ "        </li>", species, n - 1);
							
		}
		
						
		while (!(loop > blockSize || n > totalPage)) {
							
			if (nowPage == n) {
				pagebar += "<li class='active'>";				
			} else {
				pagebar += "<li>";								
			}
							
				pagebar += String.format("<a href=\"/mypet/adoption/list.action?species=%s&page=%d\">%d</a></li>", species, n, n);
						
					loop++;
					n++;
		}

						
			//다음 페이지로 이동
			if (n > totalPage) { 
					//링크에 샵만 있으면 맨위로 올라가므로 #뒤에 ! 붙여주기.
				pagebar += String.format("<li class='disabled'>"
									+ "            <a href=\"#!\" aria-label=\"Next\">"
									+ "                <span aria-hidden=\"true\">&raquo;</span>"
									+ "            </a>"
									+ "        </li>");
							
			} else { //여전히 다음페이지가 존재하는 경우엔 링크 있는 애로 생성.			
				pagebar += String.format("<li>"
									+ "            <a href=\"/mypet/adoption/list.action?species=%s&page=%d\" aria-label=\"Next\">"
									+ "                <span aria-hidden=\"true\">&raquo;</span>"
									+ "            </a>"
									+ "        </li>", species, n);
			}
						
						
		//2.
		request.setAttribute("search", search);
		request.setAttribute("pagebar", pagebar);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("list", list);
		request.setAttribute("species", species);
		
		return "adoption/list";

	}
	
	
	@RequestMapping(value = "/adoption/view.action", method = { RequestMethod.GET })
	public String adoptionView(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seqAdoption) {
		
		AdoptionDTO dto = adao.getView(seqAdoption);
		request.setAttribute("dto", dto);
		
		return "adoption/view";

	}
	
	//http://localhost:8090/mypet/adoption/write.action
	@RequestMapping(value="/adoption/write.action")
	public String adoptionwrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		return "adoption/write";		
	}
	
	
	//http://localhost:8090/mypet/adoption/edit.action
	@RequestMapping(value="/adoption/edit.action")
	public String edit() {
		return "adoption.edit";		
	}
	
	
	//http://localhost:8090/mypet/adoption/del.action
	@RequestMapping(value="/adoption/del.action")
	public String del() {
		return "adoption.del";		
	}

	
	//http://localhost:8090/mypet/adoption/checklist.action
	@RequestMapping(value="/adoption/checklist.action", method={RequestMethod.GET})
	public String checklist(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		//임시 session값 부여
		session.setAttribute("seqUser", "6");
		session.setAttribute("id", "red1234");
		System.out.println(session.getAttribute("seqUser"));
		System.out.println(session.getAttribute("id"));
		return "adoption/checklist";		
	}
	
	//http://localhost:8090/mypet/adoption/writereservation.action
	@RequestMapping(value="/adoption/writereservation.action", method={RequestMethod.GET})
	public String writeReservation(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		//임시 session값 부여
		session.setAttribute("seqUser", "6");
		session.setAttribute("id", "red1234");
		System.out.println(session.getAttribute("seqUser"));
		System.out.println(session.getAttribute("id"));

		VwReservationDTO dto = dao.getUserInfo(session.getAttribute("id"));
		
		String address = dto.getAddress();
		String temp[] = address.split(" ");
		address = temp[1];
		System.out.println(address);
		
		List<VetDTO> list = dao.getVetList(address);
		
		//회원정보
		request.setAttribute("dto", dto);
		//동물병원
		request.setAttribute("list", list);
		
		return "adoption/write_reservation";		
	}
	
	//http://localhost:8090/mypet/adoption/viewreservation.action
	@RequestMapping(value="/adoption/viewreservation.action", method={RequestMethod.POST})
	public String viewReservation(HttpServletRequest request, HttpServletResponse response, HttpSession session	
			,VwReservationDTO dto) {	//1.
		
		//1. 데이터 가져오기
		//2. 데이터 통해 페이지에 출력
		
				
		request.setAttribute("dto", dto);
		
		return "adoption/view_reservation";		
	}
	//http://localhost:8090/mypet/adoption/sendreservation.action
	@RequestMapping(value="/adoption/sendreservation.action", method={RequestMethod.POST})
	public String sendReservation(HttpServletRequest request, HttpServletResponse response, HttpSession session
			,VwReservationDTO dto) {
		
		dao.insertReservation(dto);
		
		return "adoption/send_reservation";		
	}

	
}
