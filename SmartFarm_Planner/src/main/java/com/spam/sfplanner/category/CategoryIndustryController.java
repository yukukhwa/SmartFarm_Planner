/*나성수*/
package com.spam.sfplanner.category;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*
 * 산업분류카테고리 관련 컨트롤러
 */
@Controller
public class CategoryIndustryController {

	@Autowired
	private CategoryIndustryService categoryIndustryService;
	
	/**
	 * 산업카테고리 수정 처리 컨트롤러
	 * @param 산업카테고리 수정화면에서 받아온 데이터
	 * @return 산업카테고리 리스트
	 */
	@RequestMapping(value="/updateIndustry",method = RequestMethod.POST)
	public String updateCategoryIndustry(CategoryIndustry categoryIndustry) {
		categoryIndustryService.updateCategoryIndustry(categoryIndustry);
		return "redirect:/listIndustry";
	}
	
	/**
	 * 산업카테고리 수정 화면 출력 처리 컨트롤러
	 * @param 산업카테고리넘버
	 * @param model
	 * @return 산업카테고리 수정 화면
	 */
	@RequestMapping(value="/updateIndustry",method = RequestMethod.GET)
	public String updateCategoryIndustry(@RequestParam(value="industryNumber",required=true)int industryNumber,Model model) {
		model.addAttribute("categoryIndustryDb", categoryIndustryService.updateCategoryIndustry(industryNumber));
		return "category/industry/updateIndustry";
	}
	
	/**
	 * 산업카테고리 삭제 처리 컨트롤러
	 * @param 산업카테고리넘버
	 * @return 산업카테고리 리스트
	 */
	@RequestMapping(value="/deleteIndustry",method = RequestMethod.GET)
	public String deleteCategoryIndustry(@RequestParam(value="industryNumber",required=true)int industryNumber) {
		categoryIndustryService.deleteCategoryIndustry(industryNumber);
		return "redirect:/listIndustry";
	}
	
	/**
	 * 검색 조건에 따른 산업카테고리 리스트 출력 컨트롤러
	 * @param 산업명
	 * @param 등록기관명
	 * @param 검색 조건
	 * @param model
	 * @return 산업카테고리 리스트
	 */
	@RequestMapping(value="/listIndustry",method = RequestMethod.POST)
	public String listSelectCategoryIndustry(@RequestParam(value="industryName",required=false)String industryName
											,@RequestParam(value="aName",required=false)String aName,Model model) {
		//System.out.println(industryName+aName);
		model.addAttribute("list", categoryIndustryService.listSelectCategoryIndustry(industryName, aName));
		return "category/industry/listIndustry";
	}
	
	/**
	 * 산업카테고리 리스트 출력 컨트롤러
	 * @param model
	 * @return 산업카테고리 리스트 화면
	 */
	@RequestMapping(value="/listIndustry",method = RequestMethod.GET)
	public String listSelectCategoryIndustry(Model model) {
		model.addAttribute("list", categoryIndustryService.listSelectCategoryIndustry());
		return "category/industry/listIndustry";
	}
	
	/**
	 * 산업카테고리 등록 처리 컨트롤러
	 * @param 화면에서 받아온 산업명
	 * @param 관리기관넙버(세션값)
	 * @return
	 */
	@RequestMapping(value="/addIndustry",method = RequestMethod.POST)
	public String insertCategoryIndustry(CategoryIndustry categoryIndustry,HttpSession session) {
		categoryIndustryService.insertCategoryIndustry(categoryIndustry, session);
		return "redirect:/home";
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
