/*[김재희]*/
package com.spam.sfplanner.category;

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
public class CategoryThemeController {
	@Autowired CategoryThemeService categoryThemeService;
	private final static Logger LOGGER = LoggerFactory.getLogger(CategoryThemeController.class);
	
	/*겟방식으로 요청이 들어올 때 삭제처리 후 listTheme으로 리다이렉트 한다*/
	@RequestMapping(value="/deleteTheme", method=RequestMethod.GET)
	public String deleteCategoryTheme(int themeNumber) {
		System.out.println("delete themeNumber==>"+themeNumber);
		categoryThemeService.deleteCategoryTheme(themeNumber);
		return "redirect:/listTheme";
	}
	
	/*post방식으로 수정처리 후 listTheme으로 리다이렉트한다*/
	@RequestMapping(value="/updateTheme", method=RequestMethod.POST)
	public String updateCategoryTheme(CategoryTheme categoryTheme) {
		LOGGER.info("CategoryTheme updateTheme post 호출");
		System.out.println("categoryTheme===> "+categoryTheme);
		categoryThemeService.updateCategoryTheme(categoryTheme);
		return "redirect:/listTheme";
	}
	
	/*updateTheme에서 get방식으로 요청들어오면 수정화면이 출력되어 updateThemeForm으로 포워드한다*/
	@RequestMapping(value="/updateTheme", method=RequestMethod.GET)
	public String updateCategoryTheme(String themeName, Model model) {
		model.addAttribute("categoryTheme", categoryThemeService.oneSelectCategoryTheme(themeName));
		return "category/theme/updateTheme";
	}
	
	/*listTheme에서 포스트방식으로 요청이 들어올 때*/
	@RequestMapping(value="/listTheme", method=RequestMethod.POST)
	public String listSelectCategoryTheme(Model model
									,@RequestParam(value="searchKeyword", defaultValue="")String searchKeyword
									,@RequestParam(value="themeCateSearchOption")String themeCateSearchOption) {
		System.out.println("searchKeyword===> "+searchKeyword);
		System.out.println("themeCateSearchOption===> "+themeCateSearchOption);
		List<CategoryTheme> list = categoryThemeService.searchListSelectCategoryTheme(searchKeyword, themeCateSearchOption);
		model.addAttribute("list", list);
		System.out.println("list ==>"+list);
		return "category/theme/listTheme";
	}
	
	/*테마 카테고리 리스트를 출력하는 컨트롤러*/
	@RequestMapping(value="/listTheme", method=RequestMethod.GET)
	public String listSelectCategoryTheme(Model model) {
		model.addAttribute("list", categoryThemeService.listSelectCategoryTheme());
		return "category/theme/listTheme";
	}
	
	/*테마 카테고리 등록화면에서 등록처리 컨트롤러*/
	@RequestMapping(value="/addTheme", method=RequestMethod.POST)
	public String insertCategoryTheme(CategoryTheme categoryTheme) {
		LOGGER.info("CategoryThemeController addTheme post호출");
		categoryThemeService.insertCategoryTheme(categoryTheme);
		System.out.println("categoryThemeDb==> "+categoryTheme);
		return "redirect:/listTheme";
	}
	
	/*테마 카테고리 등록 화면 컨트롤러*/
	@RequestMapping(value="/addTheme", method=RequestMethod.GET)
	public String insertCategoryTheme() {
		return "category/theme/addTheme";
	}
}
