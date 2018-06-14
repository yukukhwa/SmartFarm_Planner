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
public class CategoryEquipController {
	@Autowired
	private CategoryEquipService categoryEquipService;
	private static final Logger logger = LoggerFactory.getLogger(CategoryEquipController.class);
	
	
	/*장비종류카테고리 삭제처리 Controller*/
	@RequestMapping(value="/deleteCategoryEquip", method=RequestMethod.GET)
	public String deleteCategoryEquip(int equipNumber) {
		categoryEquipService.deleteCategoryEquip(equipNumber);
		return "redirect:/listCategoryEquip";
	}
	
	/*장비종류카테고리 수정처리 Controller*/
	@RequestMapping(value="/updateCategoryEquip", method=RequestMethod.POST)
	public String updateCategoryEquip(CategoryEquipDb categoryEquipDb) {
		categoryEquipService.updateCategoryEquip(categoryEquipDb);
		return "redirect:/listCategoryEquip";
	}
	/*하나의 장비종류카테고리 호출 Controller*/
	@RequestMapping(value="/updateCategoryEquip", method=RequestMethod.GET)
	public String oneSelectCategoryEquip(int equipNumber, Model model) {
		model.addAttribute("listCategoryEquip",categoryEquipService.oneSelectCategoryEquip(equipNumber));
		return "category/equip/updateCategoryEquip";
	}
	/*장비종류카테고리 리스트 출력 Controller*/
	@RequestMapping(value="/listCategoryEquip", method=RequestMethod.GET)
	public String listSelectCategoryEquip(Model model) {
		model.addAttribute("list", categoryEquipService.listSelectCategoryEquip());
		return "category/equip/listCategoryEquip";
	}
	/*장비종류카테고리 등록처리 Controller*/
	@RequestMapping(value="/addCategoryEquip", method=RequestMethod.POST)
	public String insertCategoryEquip(CategoryEquipDb categoryEquipDb, HttpSession session) {
		categoryEquipService.insertCategoryEquip(categoryEquipDb, session);
		return "redirect:/listCategoryEquip";
	}
		
	/*장비종류카테고리 등록 화면 호출 Controller*/
	@RequestMapping(value="/addCategoryEquip", method=RequestMethod.GET)
	public String insertCategoryEquip() {
		return "category/equip/addCategoryEquip";
	}
}
