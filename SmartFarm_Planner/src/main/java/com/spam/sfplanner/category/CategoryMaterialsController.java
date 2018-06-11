package com.spam.sfplanner.category;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryMaterialsController {
	@Autowired CategoryMaterialsService categoryMaterialsService;
	@Autowired CategoryThemeService categoryThemeService;
	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryMaterialsController.class);
	
	@RequestMapping(value="/addMaterialsCate", method=RequestMethod.POST)
	public String insertCategoryMaterials(CategoryMaterialsDb categoryMaterialsDb) {
		System.out.println("insertCateMaterials categoryMaterialsDb====> "+categoryMaterialsDb);
		categoryMaterialsService.insertCategoryMaterials(categoryMaterialsDb);
		return "category/materials/addMaterialsCate";
	}
	
	@RequestMapping(value="/addMaterialsCate", method=RequestMethod.GET)
	public String insertCategoryMaterials(Model model) {
		model.addAttribute("categoryThemeDb", categoryThemeService.listSelectCategoryTheme());
		System.out.println("categoryThemeDb===> "+categoryThemeService.listSelectCategoryTheme());
		return "category/materials/addMaterialsCate";
	}
}
