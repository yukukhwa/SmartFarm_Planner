package com.spam.sfplanner.actresult;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WrHumanPayController {
	
	@Autowired
	private WrHumanPayService wrHumanPayService;
	
	private static final Logger logger = LoggerFactory.getLogger(WrHumanPayController.class);
	
	/*@RequestMapping(value="/insertWrHumanPay", method = RequestMethod.POST)
	public String insertWrHumanPay(WrHumanPayDb wrHumanPayDb) {
		System.out.println(wrHumanPayDb);
		wrHumanPayService.insertWrHumanPay(wrHumanPayDb);
		return "redirect:/";
	}
	
	@RequestMapping(value="/insertWrHumanPay", method = RequestMethod.GET)
	public String insertWrHumanPay(Model model) {
		model.addAttribute("listHumanPay", wrHumanPayService.listSelectWoHumanPay());
		return "actresult/wr_humanpay/addHumanpay";
	}*/
}
