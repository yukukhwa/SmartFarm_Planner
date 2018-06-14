/*배건혜*/
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
public class CategoryDealController {
	@Autowired 
	private CategoryDealService categoryDealService;
	private static final Logger logger = LoggerFactory.getLogger(CategoryDealController.class);
	
	/*거래처카테고리 삭제 Controller*/
	@RequestMapping(value="/deleteCategoryDeal", method=RequestMethod.GET)
	public String deleteCategoryDeal(int dealNumber) {
		categoryDealService.deleteCategoryDeal(dealNumber);
		return "redirect:/listCategoryDeal";
	}
	
	/*거래처카테고리 수정처리 Controller*/
	@RequestMapping(value="/updateCategoryDeal", method=RequestMethod.POST)
	public String updateCategoryDeal(CategoryDeal categoryDeal) {
		categoryDealService.updateCategoryDeal(categoryDeal);
		return "redirect:/listCategoryDeal";
	}
	
	/*하나의 거래처카테고리 호출 Controller*/
	@RequestMapping(value="/updateCategoryDeal", method=RequestMethod.GET)
	public String oneSelectCategoryDeal(int dealNumber, Model model) {
		model.addAttribute("listCategoryDeal", categoryDealService.oneSelectCategoryDeal(dealNumber));
		return "category/deal/updateCategoryDeal";
	}
	
	/*거래처카테고리 리스트 출력 Controller*/
	@RequestMapping(value="/listCategoryDeal", method=RequestMethod.GET)
	public String listSelectCategoryDeal(Model model) {
		model.addAttribute("list", categoryDealService.listSelectCategoryDeal());
		return "category/deal/listCategoryDeal";
	}
	/*거래처카테고리 등록 처리 Controller*/
	@RequestMapping(value="/addCategoryDeal", method=RequestMethod.POST)
	public String insertCategoryDeal(CategoryDeal categoryDeal, HttpSession session) {
		categoryDealService.insertCategoryDeal(categoryDeal, session);
		return "redirect:/listCategoryDeal";
	}
	
	/*거래처카테고리 등록 화면 호출 Controller*/
	@RequestMapping(value="/addCategoryDeal", method=RequestMethod.GET)
	public String insertCategoryDeal() {
		return "category/deal/addCategoryDeal";
	}
}
