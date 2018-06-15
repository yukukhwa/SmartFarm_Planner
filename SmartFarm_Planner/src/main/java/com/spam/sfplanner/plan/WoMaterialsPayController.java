package com.spam.sfplanner.plan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WoMaterialsPayController {
	@Autowired WoMaterialsPayService woMaterialsPayService;
	
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
	
	@RequestMapping(value="addMaterialsPay", method=RequestMethod.GET)
	public String insertWoMaterialsPay() {
		return "plan/wo_materials_pay/addMaterialsPay";
	}
}
