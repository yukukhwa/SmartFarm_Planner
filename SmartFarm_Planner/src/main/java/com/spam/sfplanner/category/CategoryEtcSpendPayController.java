/*배건혜*/
package com.spam.sfplanner.category;

import java.util.Map;

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
	
	
	/**
	 * 기타지출비카테고리 삭제처리 Controller
	 * @param etcspendpayNumber
	 * @return
	 */
	@RequestMapping(value="/deleteCategoryEtcSpendPay", method=RequestMethod.GET)
	public String deleteCategoryEtcSpendPay(int etcspendpayNumber) {
		categoryEtcSpendPayService.deleteCategoryEtcSpendPay(etcspendpayNumber);
		return "redirect:/listCategoryEtcSpendPay";
	}
	
	/**
	 * 기타지출비카테고리 수정처리 Controller
	 * @param categoryEtcSpendPay
	 * @return
	 */
	@RequestMapping(value="/updateCategoryEtcSpendPay", method=RequestMethod.POST)
	public String updateCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay) {
		categoryEtcSpendPayService.updateCategoryEtcSpendPay(categoryEtcSpendPay);
		return "redirect:/listCategoryEtcSpendPay";
	}
	/**
	 * 하나의 리스트를 수정화면에 조회 하기 위한 Controller
	 * @param etcspendpayNumber
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/updateCategoryEtcSpendPay", method=RequestMethod.GET)
	public String oneSelectCategoryEtcSpendPay(int etcspendpayNumber, Model model) {
		Map<String, Object> map = categoryEtcSpendPayService.oneSelectCategoryEtcSpendPay(etcspendpayNumber);
		model.addAttribute("categoryEtcSpendPay", map.get("categoryEtcSpendPay"));
		model.addAttribute("categoryTheme", map.get("categoryTheme"));
		return "category/etcspendpay/updateCategoryEtcSpendPay";
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
	 * @param categoryEtcSpendPay
	 * @return
	 */
	@RequestMapping(value="/addCategoryEtcSpendPay", method=RequestMethod.POST)
	public String insertCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay, HttpSession session) {
		System.out.println("insertCategoryEtcSpendPay categoryEtcSpendPay====> "+categoryEtcSpendPay);
		categoryEtcSpendPayService.insertCategoryEtcSpendPay(categoryEtcSpendPay, session);
		return "redirect:/listCategoryEtcSpendPays";
	}
	
	/**
	 * 기타지출비카테고리 등록 화면 Controller GET 방식
	 * @return
	 */
	@RequestMapping(value="/addCategoryEtcSpendPay", method=RequestMethod.GET)
	public String insertCategoryEtcSpendPay(Model model) {
		model.addAttribute("categoryTheme", categoryEtcSpendPayService.insertCategoryEtcSpendPay());
		return "category/etcspendpay/addCategoryEtcSpendPay";
	}
}
