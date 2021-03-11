package com.test.mypet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value="/template/template.action")
	public String template() {
		return "template.template";		
	}
	
	
	// test용 tiles 2번쨰 방식입니다.  나중에 지우면됩니다.!! 
	@RequestMapping(value="/stat.action")
	public String template_two() {
		System.out.println("test");
		return "statistic/list";		
	}
	
}
