/*나성수*/
package com.spam.sfplanner.category;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CategoryItemController {

	@Autowired
	private CategoryItemService categoryItemService;
	
	/**
	 * 품목카테고리 수정 처리 컨트롤러
	 * @param 품목카테고리 수정 화면에서 받아온 데이터
	 * @return 품목카테고리 리스트 화면
	 */
	@RequestMapping(value="/updateItem",method = RequestMethod.POST)
	public String updateCategoryItem(CategoryItemDb categoryItemDb) {
		categoryItemService.updateCategoryItem(categoryItemDb);
		return "redirect:/listItem";
	}
	
	/**
	 * 품목카테고리 수정 화면 출력 컨트롤러
	 * @param 품목넘버
	 * @param model
	 * @return 품목카테고리 수정 화면
	 */
	@RequestMapping(value="/updateItem")
	public String updateCategoryItem(@RequestParam(value="iItemNumber",required=true)int iItemNumber,Model model) {
		Map<String, Object> map = categoryItemService.updateCategoryItem(iItemNumber);
		model.addAttribute("item", map.get("item"));
		model.addAttribute("list", map.get("industryList"));
		return "category/item/updateItem";
	}
	
	/**
	 * 품목카테고리 삭제 처리 컨트롤러
	 * @param 해당 품목 넘버
	 * @return 품목카테고리 리스트 화면
	 */
	@RequestMapping(value="/deleteItem",method = RequestMethod.GET)
	public String deleteCategoryItem(@RequestParam(value="iItemNumber",required=true)int iItemNumber) {
		categoryItemService.deleteCategoryItem(iItemNumber);
		return "redirect:/listItem";
	}
	
	/**
	 * 검색 조건에 따른 품목카테리 리스트 출력 컨트롤러
	 * @param 품목명
	 * @param 산업명
	 * @param 등록기관명
	 * @param model
	 * @return 품목카테고리 리스트
	 */
	@RequestMapping(value="/listItem",method = RequestMethod.POST)
	public String listSelectCategoryItem(@RequestParam(value="iItemName",required=false)String iItemName
										,@RequestParam(value="industryName",required=false)String industryName
										,@RequestParam(value="aName",required=false)String aName,Model model) {
		model.addAttribute("list", categoryItemService.listSelectCategoryItem(iItemName, industryName, aName));
		return "category/item/listItem";
	}
	
	/**
	 * 품목카테고리 리스트 출력 컨트롤러
	 * @param model
	 * @return 품목카테고리 리스트
	 */
	@RequestMapping(value="/listItem",method = RequestMethod.GET)
	public String listSelectCategoryItem(Model model) {
		model.addAttribute("list", categoryItemService.listSelectCategoryItem());
		return "category/item/listItem";
	}
	
	/**
	 * 품목카테고리 등록 처리 컨트롤러
	 * @param 품목명,산업카테고리넘버
	 * @param 등록기관넘버
	 * @return 품목카테고리 리스트 화면
	 */
	@RequestMapping(value="/addItem",method = RequestMethod.POST)
	public String insertCategoryItem(CategoryItemDb categoryItemDb,HttpSession session) {
		//System.out.println(categoryItemDb.toString());
		categoryItemService.insertCategoryItem(categoryItemDb, session);
		return "redirect:/listItem";
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
