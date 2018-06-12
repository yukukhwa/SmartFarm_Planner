package com.spam.sfplanner.plan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WoNeedEquipController {
	@RequestMapping(value="/updateNeedEquip", method=RequestMethod.GET)
	public String updateWoNeedEquip() {
		return "plan/wo_needequip/updateNeedEquip";
	}
	
	@RequestMapping(value="/listNeedEquip", method=RequestMethod.GET)
	public String listSelectWoNeedEquip() {
		return "plan/wo_needequip/listNeedEquip";
	}
	
	@RequestMapping(value="/addNeedEquip", method=RequestMethod.GET)
	public String insertWoNeedEquip() {
		return "plan/wo_needequip/addNeedEquip";
	}
}
