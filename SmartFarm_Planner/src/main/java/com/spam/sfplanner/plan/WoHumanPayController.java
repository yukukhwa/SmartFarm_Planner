package com.spam.sfplanner.plan;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WoHumanPayController {
	@Autowired WoHumanPayService woHumanPayService;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoHumanPayController.class);
	
	@RequestMapping(value="/updateHumanPay", method=RequestMethod.GET)
	public String updateWoHumanPay() {
		return "plan/wo_humanpay/updateHumanPay";
	}
	
	@RequestMapping(value="/listHumanPay", method=RequestMethod.POST)
	public String listSelectWoHumanPay(Model model
									, int ppWorkNumber
									, String searchHumanPayOption
									, String searchKeyword) {
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("list", woHumanPayService.listSelectWoHumanPay(searchKeyword, searchHumanPayOption, ppWorkNumber));
		return "plan/wo_humanpay/listHumanPay";
	}
	
	@RequestMapping(value="/listHumanPay", method=RequestMethod.GET)
	public String listSelectWoHumanPay(Model model, int ppWorkNumber) {
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("list", woHumanPayService.listSelectWoHumanPay(ppWorkNumber));
		return "plan/wo_humanpay/listHumanPay";
	}
	
	/*@RequestMapping(value="/addHumanPay", method=RequestMethod.POST)
	public String insertWoHumanPay() {
		return "plan/wo_humanpay/addHumanPay";
	}*/
	
	@RequestMapping(value="/addHumanPay", method=RequestMethod.GET)
	public String insertWoHumanPay() {
		return "plan/wo_humanpay/addHumanPay";
	}
}
