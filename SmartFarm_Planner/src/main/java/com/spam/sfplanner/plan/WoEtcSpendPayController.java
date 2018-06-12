package com.spam.sfplanner.plan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class WoEtcSpendPayController {
	@RequestMapping(value="/updateEtcSpendPay", method=RequestMethod.GET)
	public String updateWoRentPay() {
		return "plan/wo_etcspendpay/updateEtcSpendPay";
	}
	
	@RequestMapping(value="/listEtcSpendPay", method=RequestMethod.GET)
	public String listSelectWoRentPay() {
		return "plan/wo_etcspendpay/listEtcSpendPay";
	}
	
	@RequestMapping(value="/addEtcSpendPay", method=RequestMethod.GET)
	public String insertWoRentPay() {
		return "plan/wo_etcspendpay/addEtcSpendPay";
	}
}
