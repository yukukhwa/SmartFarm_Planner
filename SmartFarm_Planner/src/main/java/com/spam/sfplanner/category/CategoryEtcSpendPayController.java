package com.spam.sfplanner.category;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryEtcSpendPayController {
	@Autowired
	private CategoryEtcSpendPayService categoryEtcSpendPayService;
	@Autowired
	private CategoryThemeService categoryThemeService;
	
	private static final Logger logger = LoggerFactory.getLogger(CategoryEtcSpendPayController.class);
	
	@RequestMapping(value="/updateCategoryEtcSpendPay", method=RequestMethod.GET)
	public String updateCategoryEtcSpendPay() {
		return "category/etcspendpay/addCategoryEtcSpendPay";
	}
	/**
	 * 기타지출비카테고리 리스트 출력 Controller
	 * @return
	 */
	@RequestMapping(value="/listCategoryEtcSpendPay", method=RequestMethod.GET)
	public String listSelectCategoryEtcSpendPay(Model model) {
		model.addAttribute("list", categoryEtcSpendPayService.listSelectCategoryEtcSpendPay());
		return "category/etcspendpay/listCategoryEtcSpendPay";
	}
	/**
	 * 기타지출비카테고리 등록 처리 Controller post방식
	 * @param categoryEtcSpendPayDb
	 * @return
	 */
	@RequestMapping(value="/addCategoryEtcSpendPay", method=RequestMethod.POST)
	public String insertCategoryEtcSpendPay(CategoryEtcSpendPayDb categoryEtcSpendPayDb, HttpSession session) {
		System.out.println("insertCategoryEtcSpendPay categoryEtcSpendPayDb====> "+categoryEtcSpendPayDb);
		categoryEtcSpendPayService.insertCategoryEtcSpendPay(categoryEtcSpendPayDb, session);
		return "category/etcspendpay/listCategoryEtcSpendPay";
	}
	
	/**
	 * 기타지출비카테고리 등록 화면 Controller GET 방식
	 * @return
	 */
	@RequestMapping(value="/addCategoryEtcSpendPay", method=RequestMethod.GET)
	public String insertCategoryEtcSpendPay(Model model) {
		model.addAttribute("categoryThemeDb", categoryEtcSpendPayService.insertCategoryEtcSpendPay());
		return "category/etcspendpay/addCategoryEtcSpendPay";
	}
}
