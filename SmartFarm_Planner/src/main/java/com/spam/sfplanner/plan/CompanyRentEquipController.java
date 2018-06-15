package com.spam.sfplanner.plan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RentEquipController {
	@RequestMapping(value="/updateRentEquip", method=RequestMethod.GET)
	public String updateRentEquip() {
		return "plan/company_rentequip/updateRentEquip";
	}
	
	@RequestMapping(value="/listRentEquip", method=RequestMethod.GET)
	public String listSelectRentEquip() {
		return "plan/company_rentequip/listRentEquip";
	}
	
	@RequestMapping(value="/addRentEquip", method=RequestMethod.GET)
	public String insertRentEquip() {
		return "plan/company_rentequip/addRentEquip";
	}
}
