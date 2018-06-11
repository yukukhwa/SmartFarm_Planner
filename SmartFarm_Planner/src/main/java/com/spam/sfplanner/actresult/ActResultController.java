package com.spam.sfplanner.actresult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ActResultController {
	
	@Autowired
	private WrHumanPayService wrHumanPayService;
	@Autowired
	private ActResultService actResultService;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultController.class);
	
	@RequestMapping(value="/insertWrHumanPay", method = RequestMethod.POST)
	public String insertActResult (ActResultDb actResultDb) {
		System.out.println(actResultDb.getWrNumber());
		System.out.println(actResultDb.getWrHumanPayDb());
		return "redirect:/";
	}
	
	@RequestMapping(value="/insertWrHumanPay", method = RequestMethod.GET)
	public String insertWrHumanPay (Model model) {
		model.addAttribute("listHumanPay", wrHumanPayService.listSelectWoHumanPay());
		return "actresult/wr_humanpay/addHumanpay";
	}
	
	@RequestMapping(value="/insertActResult", method = RequestMethod.GET)
	public String insertActResult (Model model) {
		model.addAttribute("listHumanPay", wrHumanPayService.listSelectWoHumanPay());
		return "actresult/addActResultList";
	}
}
