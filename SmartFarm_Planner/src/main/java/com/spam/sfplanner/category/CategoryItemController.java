/*나성수*/
package com.spam.sfplanner.category;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryItemController {

	@Autowired
	private CategoryItemService categoryItemService;
	
	@RequestMapping(value="/listItem",method = RequestMethod.GET)
	public String listSelectCategoryItem(Model model) {
		model.addAttribute("list", categoryItemService.listSelectCategoryItem());
		return "category/item/listItem";
	}
	
	/**
	 * 품목카테고리 등록 처리 컨트롤러
	 * @param 품목명,산업카테고리넘버
	 * @param 등록기관넘버
	 * @return 메인화면
	 */
	@RequestMapping(value="/addItem",method = RequestMethod.POST)
	public String insertCategoryItem(CategoryItemDb categoryItemDb,HttpSession session) {
		//System.out.println(categoryItemDb.toString());
		categoryItemService.insertCategoryItem(categoryItemDb, session);
		return "redirect:/";
	}
	
	/**
	 * 품목카테고리 등록 화면 출력 컨트롤러
	 * @param model
	 * @return 품목카테고리 등록 화면
	 */
	@RequestMapping(value="/addItem",method = RequestMethod.GET)
	public String insertCategoryItem(Model model) {
		model.addAttribute("listIndustry", categoryItemService.insertCategoryItem());
		return "category/item/addItem";
	}
}
