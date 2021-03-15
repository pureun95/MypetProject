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
		
		List<GoodsDTO> list = dao.list(map);
		
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
