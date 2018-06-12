package com.spam.sfplanner.plan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WoNeRentPayController {
	@RequestMapping(value="/updateNeRentPay", method=RequestMethod.GET)
	public String updateWoNeRentPay() {
		return "plan/wo_ne_rentpay/updateNeRentPay";
	}
	
	@RequestMapping(value="/listNeRentPay", method=RequestMethod.GET)
	public String listSelectWoNeRentPay() {
		return "plan/wo_ne_rentpay/listNeRentPay";
	}
	
	@RequestMapping(value="/addNeRentPay", method=RequestMethod.GET)
	public String insertWoNeRentPay() {
		return "plan/wo_ne_rentpay/addNeRentPay";
	}
}
