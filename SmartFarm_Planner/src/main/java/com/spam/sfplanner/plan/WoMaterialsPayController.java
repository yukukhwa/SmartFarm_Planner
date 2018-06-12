package com.spam.sfplanner.plan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WoMaterialsPayController {
	
	@RequestMapping(value="updateMaterialsPay", method=RequestMethod.GET)
	public String updateWoMaterialsPay() {
		return "plan/wo_materials_pay/updateMaterialsPay";
	}
	
	@RequestMapping(value="listMaterialsPay", method=RequestMethod.GET)
	public String listSelectWoMaterialsPay() {
		return "plan/wo_materials_pay/listMaterialsPay";
	}
	
	@RequestMapping(value="addMaterialsPay", method=RequestMethod.GET)
	public String insertWoMaterialsPay() {
		return "plan/wo_materials_pay/addMaterialsPay";
	}
}
