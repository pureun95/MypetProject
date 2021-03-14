package com.test.mypet.sponsor;

import java.net.Authenticator.RequestorType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SponsorController {

	
	@RequestMapping(value="sponsor/view.action", method= {RequestMethod.GET})
	public String stat_view() {
		
		return "sponsor/view";
	}
	
}
