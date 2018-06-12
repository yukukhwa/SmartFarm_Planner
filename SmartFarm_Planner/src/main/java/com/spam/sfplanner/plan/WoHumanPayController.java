package com.spam.sfplanner.plan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WoHumanPayController {
	
	@RequestMapping(value="/updateHumanPay", method=RequestMethod.GET)
	public String updateWoHumanPay() {
		return "plan/wo_humanpay/updateHumanPay";
	}
	
	@RequestMapping(value="/listHumanPay", method=RequestMethod.GET)
	public String listSelectWoHumanPay() {
		return "plan/wo_humanpay/listHumanPay";
	}
	
	@RequestMapping(value="/addHumanPay", method=RequestMethod.GET)
	public String insertWoHumanPay() {
		return "plan/wo_humanpay/addHumanPay";
	}
}
