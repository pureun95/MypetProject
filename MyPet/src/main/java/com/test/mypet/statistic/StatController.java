package com.test.mypet.statistic;

import java.net.Authenticator.RequestorType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StatController {

	
	@RequestMapping(value="stat/view.action", method= {RequestMethod.GET})
	public String stat_view() {
		
		return "statistic/view";
	}
	
}
