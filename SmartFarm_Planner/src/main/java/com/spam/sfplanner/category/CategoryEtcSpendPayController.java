package com.spam.sfplanner.category;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryEtcSpendPayController {
	/*@Autowired
	private CategoryEtcSpendPayService categoryEtcSpendPayService;*/
	private static final Logger logger = LoggerFactory.getLogger(CategoryEtcSpendPayController.class);
	
	@RequestMapping(value="/updateCategoryEtcSpendPay", method=RequestMethod.GET)
	public String updateCategoryEtcSpendPay() {
		return "category/etcspendpay/addCategoryEtcSpendPay";
	}
	
	@RequestMapping(value="/listCategoryEtcSpendPay", method=RequestMethod.GET)
	public String listSelectCategoryEtcSpendPay() {
		return "category/etcspendpay/addCategoryEtcSpendPay";
	}
	
	@RequestMapping(value="/addCategoryEtcSpendPay", method=RequestMethod.GET)
	public String insertCategoryEtcSpendPay() {
		return "category/etcspendpay/addCategoryEtcSpendPay";
	}
}
