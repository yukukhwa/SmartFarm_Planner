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
public class CategoryMaterialsController {
	@Autowired CategoryMaterialsService categoryMaterialsService;
	@Autowired CategoryThemeService categoryThemeService;
	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryMaterialsController.class);
	
	/*deleteMaterialsCate로 get방식으로 요청받았을 때 원자재 카테고리 삭제처리 후 list로 리다이렉트 한다*/
	@RequestMapping(value="/deleteMaterialsCate", method=RequestMethod.GET)
	public String deleteCategoryMaterials(int materialsNumber) {
		//System.out.println("delete materialsNumber===> "+materialsNumber);
		categoryMaterialsService.deleteCategoryMaterials(materialsNumber);
		return "redirect:/listMaterialsCate";
	}
	
	/*updateMaterialsCate로 post방식으로 요청받을 시 원자재 카테고리 정보들을 수정처리 후 리스트로 리다이렉트 한다*/
	@RequestMapping(value="/updateMaterialsCate", method=RequestMethod.POST)
	public String updateCategoryMaterials(CategoryMaterialsDb categoryMaterialsDb) {
		//System.out.println("updateMaterials categoryMaterialsDb===> "+categoryMaterialsDb);
		categoryMaterialsService.updateCategoryMaterials(categoryMaterialsDb);
		return "redirect:/listMaterialsCate";
	}
	
	/*updateMaterialsCate로 get방식 요청받았을 때 수정화면을 위한 정보들을 화면에 출력후 updateMaterialsCateview로 포워드한다*/
	@RequestMapping(value="/updateMaterialsCate", method=RequestMethod.GET)
	public String updateCategoryMaterials(Model model, String materialsName) {
		//System.out.println("materialsName===> "+materialsName);
		model.addAttribute("categoryMaterialsDb",categoryMaterialsService.oneSelectCategoryMaterials(materialsName));
		return "category/materials/updateMaterialsCate";
	}
	
	/*listMaterialsCate로 post방식으로 요청받았을 때 원자재카테고리 리스트 출력후 list로 포워드 한다*/
	@RequestMapping(value="/listMaterialsCate", method=RequestMethod.POST)
	public String listSelectCategoryMaterials(Model model
										, @RequestParam(value="materialsCateSearchOption")String materialsCateSearchOption
										, @RequestParam(value="searchKeyword", defaultValue="")String searchKeyword) {
		List<CategoryMaterialsDb> list = categoryMaterialsService.searchListSelectCategoryMaterials(searchKeyword, materialsCateSearchOption);
		model.addAttribute("list", list);
		System.out.println("list==> "+list);
		return "category/materials/listMaterialsCate";
	}
	
	/*listMaterialsCate로 get방식으로 요청받았을 때 원자재카테고리 리스트 출력후 list로 포워드 한다*/
	@RequestMapping(value="/listMaterialsCate", method=RequestMethod.GET)
	public String listSelectCategoryMaterials(Model model) {
		model.addAttribute("list",categoryMaterialsService.listSelectCategoryMaterials());
		return "category/materials/listMaterialsCate";
	}
	
	/*addMaterialsCate로 post방식으로 요청받았을 때 원자재 카테고리 등록처리 후 인덱스로 리다이렉트*/
	@RequestMapping(value="/addMaterialsCate", method=RequestMethod.POST)
	public String insertCategoryMaterials(CategoryMaterialsDb categoryMaterialsDb) {
		System.out.println("insertCateMaterials categoryMaterialsDb====> "+categoryMaterialsDb);
		categoryMaterialsService.insertCategoryMaterials(categoryMaterialsDb);
		return "category/materials/listMaterialsCate";
	}
	
	/*addMaterialsCate로 겟방식으로 요철받을때 addMaterialsCate view로 포워드*/
	@RequestMapping(value="/addMaterialsCate", method=RequestMethod.GET)
	public String insertCategoryMaterials(Model model) {
		model.addAttribute("categoryThemeDb", categoryThemeService.listSelectCategoryTheme());
		//System.out.println("categoryThemeDb===> "+categoryThemeService.listSelectCategoryTheme());
		return "category/materials/addMaterialsCate";
	}
}
