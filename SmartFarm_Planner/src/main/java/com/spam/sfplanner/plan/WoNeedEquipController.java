/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.category.CategoryEquipService;

@Controller
public class WoNeedEquipController {
	@Autowired
	private WoNeedEquipService woNeedEquipService;
	@Autowired
	private CategoryEquipService categoryEquipService;
	@Autowired
	private PpWorkService ppWorkService;
	@Autowired
	private WoNeRentPayService woNeRentPayService;
	
	@RequestMapping(value="/updateNeedEquip", method=RequestMethod.GET)
	public String updateWoNeedEquip() {
		return "plan/wo_needequip/updateNeedEquip";
	}

	@RequestMapping(value="/listWoNeedEquip", method=RequestMethod.POST)
	public String listSelectWoNeedEquip(int ppWorkNumber, String column, String property, Model model) {
		model.addAttribute("list", woNeedEquipService.listSelectWoNeedEquip(ppWorkNumber, column, property));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_needequip/listWoNeedEquip";
	}
	
	@RequestMapping(value="/listWoNeedEquip", method=RequestMethod.GET)
	public String listSelectWoNeedEquip(int ppWorkNumber, Model model) {
		model.addAttribute("list", woNeedEquipService.listSelectWoNeedEquip(ppWorkNumber));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_needequip/listWoNeedEquip";
	}
	
	@RequestMapping(value="/addWoNeedEquip", method=RequestMethod.POST)
	public String insertWoNeedEquip(WoNeedEquip woNeedEquip) {
		System.out.println("addWoNeedEquip===> "+woNeedEquip);
		int eNeedequipNumber = woNeedEquip.geteNeedequipNumber();
		if(eNeedequipNumber == 0) {
			woNeRentPayService.insertWoNeRentPay(eNeedequipNumber);
		}
		woNeedEquipService.insertWoNeedEquip(woNeedEquip);
		return "plan/wo_needequip/addWoNeedEquip";
	}
	
	@RequestMapping(value="/addWoNeedEquip", method=RequestMethod.GET)
	public String insertWoNeedEquip(Model model, int ppNumber) {
		Map<String, Object> map = woNeedEquipService.insertWoNeedEquip(ppNumber);
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		model.addAttribute("categoryEquip", map.get("categoryEquip"));
		model.addAttribute("companyRentEquipList", map.get("companyRentEquipList"));
		model.addAttribute("categoryThemeList", map.get("categoryThemeList"));
		return "plan/wo_needequip/addWoNeedEquip";
	}
}
