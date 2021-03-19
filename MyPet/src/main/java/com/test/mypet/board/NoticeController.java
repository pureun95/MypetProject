package com.test.mypet.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class NoticeController {

	@Autowired // 의존 주입하기
	private INoticeDAO noticeDAO;

	@RequestMapping(value = "/board/noticeList.action", method = { RequestMethod.GET })
	public String noticeList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		HashMap<String, String> map = new HashMap<String, String>();

		// 검색
//		   String search = request.getParameter("search");
//			
//			if (!(search == null || search.equals(""))) {
//				map.put("search", search);
//			}

		// noticeview.action -> 새로고침 조회수 증가 방지 -> 플래그 생성
		session.setAttribute("read", false);

		// 페이징
		int nowPage = 0; // 현재 페이지 번호
		int totalCount = 0; // 총 게시물 수
		int pageSize = 10; // 한페이지당 출력 개수
		int totalPage = 0; // 총 페이지 수
		int begin = 0; // rnum 시작 번호
		int end = 0; // rnum 끝 번호
		int n = 0; // 페이지바 관련 변수
		int loop = 0; // 페이지바 관련 변수
		int blockSize = 9; // 페이지바 관련 변수

		String page = request.getParameter("page");

		if (page == null || page == "") {
			// 기본 -> page = 1
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}

		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;

		// 우리가만든 해쉬맵은 스트링이기 때문에 begin과 end도 문자열로 만들어서 넘기기.
		map.put("begin", begin + "");
		map.put("end", end + "");

		totalCount = noticeDAO.getTotalCount();

		totalPage = (int) Math.ceil((double) totalCount / pageSize);

		String pagebar = "";

		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1;

		if (n == 1) {
			pagebar += String.format("<li class='disabled'>" + "            <a href=\"#!\" aria-label=\"Previous\">"
					+ "                <span aria-hidden=\"true\">&laquo;</span>" + "            </a>"
					+ "        </li>");
		} else {
			pagebar += String.format(
					"<li>" + "            <a href=\"/mypet/board/noticeList.action?page=%d\" aria-label=\"Previous\">"
							+ "                <span aria-hidden=\"true\">&laquo;</span>" + "            </a>"
							+ "        </li>",
					n - 1);
		}

		while (!(loop > blockSize || n > totalPage)) {

			if (nowPage == n) {
				pagebar += "<li class='active'>";
			} else {
				pagebar += "<li>";
			}

			pagebar += String.format("<a href=\"/mypet/board/noticeList.action?page=%d\">%d</a></li>", n, n);

			loop++;
			n++;
		}

		// 다음 페이지로 이동
		if (n > totalPage) {
			// 링크에 샵만 있으면 맨위로 올라가므로 #뒤에 ! 붙여주기.
			pagebar += String.format("<li class='disabled'>" + "            <a href=\"#!\" aria-label=\"Next\">"
					+ "                <span aria-hidden=\"true\">&raquo;</span>" + "            </a>"
					+ "        </li>");

		} else { // 여전히 다음페이지가 존재하는 경우엔 링크 있는 애로 생성.
			pagebar += String.format(
					"<li>" + "            <a href=\"/mypet/board/noticeList.action?page=%d\" aria-label=\"Next\">"
							+ "                <span aria-hidden=\"true\">&raquo;</span>" + "            </a>"
							+ "        </li>",
					n);
		}

		List<NoticeDTO> noticeList = noticeDAO.noticeList();

		request.setAttribute("noticeList", noticeList);
		// request.setAttribute("search", search);
		request.setAttribute("pagebar", pagebar);
		request.setAttribute("nowPage", nowPage);

		return "board/noticeList";

	}

	@RequestMapping(value = "/board/noticeView.action", method = { RequestMethod.GET })
	public String noticeView(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String seqNotice) {

//		   String id = session.getId();
//		   System.out.println(id);

		System.out.println("seqNotice" + seqNotice);


		// 조회수증가
//		if (session.getAttribute("read") == null || (boolean) session.getAttribute("read") == false) {
//
//			noticeDAO.updateViewCount(ndto);
//			session.setAttribute("read", true);
//		}
		NoticeDTO ndto = noticeDAO.get(seqNotice);
		
//		int vcount = Integer.parseInt(ndto.getViewCount());
//		   vcount++;
//		   String temp = vcount + "";
//		   ndto.setViewCount(temp);
//
//		   noticeDAO.updateViewCount(ndto);

		
		
		request.setAttribute("ndto", ndto);

		int pre = Integer.valueOf(seqNotice) - 1;
		int next = Integer.valueOf(seqNotice) + 1;

		NoticeDTO preDTO = noticeDAO.get(pre + "");
		NoticeDTO nextDTO = noticeDAO.get(next + "");

		request.setAttribute("preDTO", preDTO);
		request.setAttribute("nextDTO", nextDTO);

//		   NoticeDTO ndto2 = noticeDAO.getDetail(seqNotice);
//		   request.setAttribute("ndto", ndto2);
		// NoticeDAO.getDetail(seqNotice);

		return "board/noticeView";

	}

	// 글 자세히 보기 요청 처리
//	 	@RequestMapping("/board/detail")
//	 	public String detail(HttpServletRequest request){
//	 		NoticeDAO.getDetail(request);
//	 		//view page 로 forward 이동해서 글 자세히 보기 
//	/// 		return "board/detail";
//	 		return "board/noticeView";
//	 	}

	@RequestMapping(value = "/board/noticeWrite.action", method = { RequestMethod.GET })
	public String noticeWrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/noticeWrite";

	}

	@RequestMapping(value = "/board/noticeWriteOk.action", method = { RequestMethod.POST })
	public void noticeWriteOk(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			NoticeDTO ndto) {

		ndto.setId((String) session.getAttribute("id"));

//		 //2. 첨부 파일 처리하기
//			MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
//		   
//			MultipartFile image = multi.getFile("image");
//			
//			String filename = "";

		int result = noticeDAO.write(ndto);

		try {
			if (result == 1) {

				response.sendRedirect("/mypet/board/noticeList.action");

			} else {
				response.sendRedirect("/mypet/board/noticeWrite.action");

			}
		} catch (IOException e) {
			System.out.println(e);
			e.printStackTrace();
		}

	}

	@RequestMapping(value = "/board/noticeEdit.action", method = { RequestMethod.GET })
	public String noticeEdit(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "board/noticeEdit";

	}

}
