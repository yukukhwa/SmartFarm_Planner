/*[김재희]*/
package com.spam.sfplanner.plan;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.category.CategoryMaterialsService;

@Controller
public class WoMaterialsPayController {
	@Autowired WoMaterialsPayService woMaterialsPayService;
	@Autowired CategoryMaterialsService categoryMaterialsService;
	@Autowired PpWorkService ppWorkService;

	private final static Logger LOGGER = LoggerFactory.getLogger(WoMaterialsPayController.class);
	
	@RequestMapping(value="updateMaterialsPay", method=RequestMethod.GET)
	public String updateWoMaterialsPay() {
		return "plan/wo_materials_pay/updateMaterialsPay";
	}
	
	@RequestMapping(value="listMaterialsPay", method=RequestMethod.GET)
	public String listSelectWoMaterialsPay(int ppWorkNumber, Model model) {
		model.addAttribute("list", woMaterialsPayService.listSelectWoMaterialsPay(ppWorkNumber));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_materials_pay/listMaterialsPay";
	}
	
	@RequestMapping(value="addMaterialsPay", method=RequestMethod.POST)
	public String insertWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		System.out.println("add woMaterialsPay===> "+woMaterialsPay);
		woMaterialsPayService.insertWoMaterialsPay(woMaterialsPay);
		return "plan/wo_materials_pay/addMaterialsPay";
	}
	
	@RequestMapping(value="addMaterialsPay", method=RequestMethod.GET)
	public String insertWoMaterialsPay(Model model, int ppNumber) {
		model.addAttribute("ppNumber", ppNumber);
		model.addAttribute("ppWorkList", ppWorkService.listSelectPpWork(ppNumber));
		model.addAttribute("categoryMaterials", categoryMaterialsService.listSelectCategoryMaterials());
		return "plan/wo_materials_pay/addMaterialsPay";
	}
}
