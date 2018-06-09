/*나성수*/
package com.spam.sfplanner.category;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * 산업분류카테고리 관련 컨트롤러
 */
@Controller
public class CategoryIndustryController {

	@Autowired
	private CategoryIndustryService categoryIndustryService;
	
	@RequestMapping(value="/addIndustry",method = RequestMethod.POST)
	public String insertCategoryIndustry(CategoryIndustryDb categoryIndustryDb,HttpSession session) {
		categoryIndustryService.insertCategoryIndustry(categoryIndustryDb, session);
		return "redirect:/";
	}
	
	/**
	 * 산업카테고리 등록 화면 출력 컨트롤러
	 * @return
	 */
	@RequestMapping(value="/addIndustry",method = RequestMethod.GET)
	public String insertCategoryIndustry() {
		return "category/industry/addIndustry";
	}
}
