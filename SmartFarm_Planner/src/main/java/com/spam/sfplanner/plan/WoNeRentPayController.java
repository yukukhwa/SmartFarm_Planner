/*배건혜*/
package com.spam.sfplanner.plan;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.category.CategoryThemeService;

@Controller
public class WoNeRentPayController {
	@Autowired
	private WoNeRentPayService woNeRentPayService;
	@Autowired
	private CategoryThemeService categoryThemeService;
	@Autowired
	private WoNeedEquipService woNeedEquipService;
	@Autowired
	private CompanyRentEquipService companyRentEquipService;
	
	@RequestMapping(value="/updateNeRentPay", method=RequestMethod.GET)
	public String updateWoNeRentPay() {
		return "plan/wo_ne_rentpay/updateNeRentPay";
	}
	
	@RequestMapping(value="/listWoNeRentPay", method=RequestMethod.POST)
	public String listSelectWoNeRentPay(int eNeedequipNumber, String column, String property, Model model) {
		model.addAttribute("list", woNeRentPayService.listSelectWoNeRentPay(eNeedequipNumber, column, property));
		model.addAttribute("eNeedequipNumber", eNeedequipNumber);
		return "plan/wo_ne_rentpay/listWoNeRentPay";
	}
	
	
	@RequestMapping(value="/listWoNeRentPay", method=RequestMethod.GET)
	public String listSelectWoNeRentPay(int eNeedequipNumber,Model model) {
		System.out.println(woNeRentPayService.listSelectWoNeRentPay(eNeedequipNumber));
		model.addAttribute("list", woNeRentPayService.listSelectWoNeRentPay(eNeedequipNumber));
		model.addAttribute("eNeedequipNumber", eNeedequipNumber);
		return "plan/wo_ne_rentpay/listWoNeRentPay";
	}
	
}
