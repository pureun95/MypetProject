package com.test.mypet.goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {

//	
//	@RequestMapping(value="/template/template.action")
//	public String template() {
//		return "template.template";		
//	}
	
	@RequestMapping(value="/goods/list.action")
	public String list() {
		
		return "goods.list";
		
	}
	
}
