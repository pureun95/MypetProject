package com.test.mypet.goods;

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
public class GoodsController{

	@Autowired
	private IGoodsDAO dao;

	@RequestMapping(value="/goods/template.action", method={RequestMethod.GET})
	public String template(HttpServletRequest request, HttpServletResponse response, HttpSession session, String category) {

		return "goods.template";		
	}

	@RequestMapping(value="/goods/list.action", method={RequestMethod.GET})
	public String list(HttpServletRequest request, HttpServletResponse response, HttpSession session, String category) {

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("category", category);

		//페이징
		int nowPage = 0;      //현재 페이지 번호
		int totalCount = 0;      //총 게시물 수
		int pageSize = 10;      //한페이지당 출력 개수
		int totalPage = 0;      //총 페이지 수
		int begin = 0;         //rnum 시작 번호
		int end = 0;         //rnum 끝 번호
		int n = 0;            //페이지바 관련 변수
		int loop = 0;         //페이지바 관련 변수
		int blockSize = 9;      //페이지바 관련 변수

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
		
		List<GoodsDTO> list = dao.list(map);

		totalCount = dao.getTotalCount(map);

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
			if(category == null) {
				pagebar += String.format("<li>"
						+ "            <a href=\"/mypet/goods/list.action?page=%d?\" aria-label=\"Previous\">"
						+ "                <span aria-hidden=\"true\">&laquo;</span>"
						+ "            </a>"
						+ "        </li>", n - 1);
			}
			else {
				pagebar += String.format("<li>"
						+ "            <a href=\"/mypet/goods/list.action?page=%d?category=%s\" aria-label=\"Previous\">"
						+ "                <span aria-hidden=\"true\">&laquo;</span>"
						+ "            </a>"
						+ "        </li>", n - 1, category);
			}

		}


		while (!(loop > blockSize || n > totalPage)) {

			if (nowPage == n) {
				pagebar += "<li class='active'>";            
			} else {
				pagebar += "<li>";                        
			}

			if(category == null)
				pagebar += String.format("<a href=\"/mypet/goods/list.action?page=%d\">%d</a></li>", n, n);
			else
				pagebar += String.format("<a href=\"/mypet/goods/list.action?page=%d?category=%s\">%d</a></li>", n, category, n);

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
					+ "            <a href=\"/mypet/goods/list.action?page=%d&category=%s\" aria-label=\"Next\">"
					+ "                <span aria-hidden=\"true\">&raquo;</span>"
					+ "            </a>"
					+ "        </li>", n, category);
		}

		
	    request.setAttribute("pagebar", pagebar);
	    request.setAttribute("nowPage", nowPage);
		request.setAttribute("list", list);

		return "goods.list";		
	}

	@RequestMapping(value="/goods/goods.action", method={RequestMethod.GET}) 
	public String goods(HttpServletRequest request, HttpServletResponse response, HttpSession session, String seqGoods) {


		GoodsDTO dto = dao.goods(seqGoods);

		request.setAttribute("dto", dto);

		return "goods.goods";

	}

	@RequestMapping(value="/goods/order.action", method={RequestMethod.POST})
	public String order(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		String seqGoods = request.getParameter("seqGoods");
		String goodsCnt = request.getParameter("goodsCnt");

		GoodsDTO dto = dao.goods(seqGoods);

		int totalPrice = Integer.parseInt(dto.getPrice()) * Integer.parseInt(goodsCnt);

		dto.setTotalPrice(totalPrice+"");
		dto.setGoodsCnt(goodsCnt);

		request.setAttribute("dto", dto);

		return "goods.order";		
	}

	/*
	 * @RequestMapping(value="/goods/orderok.action", method={RequestMethod.POST})
	 * public void orderok(HttpServletRequest request, HttpServletResponse response,
	 * HttpSession session, GoodsDTO dto) {
	 * 
	 * dto.setSeqUser((String)session.getAttribute("seqUser"));
	 * 
	 * //1차적으로 주문 넣고 dao.order(dto);
	 * 
	 * //2차적으로 주문번호 가져와서 orderGoods insert int seqOrder = dao.getSeqOrder(dto);
	 * 
	 * 
	 * }
	 */

	@RequestMapping(value="/goods/orderList.action", method={RequestMethod.GET})
	public String orderList(HttpServletRequest request, HttpServletResponse response, HttpSession session, String category) {

		return "goods.orderList";		
	}

}
