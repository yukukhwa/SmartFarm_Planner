/*나성수*/
package com.spam.sfplanner.plan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WoInsurancePayController {

	@Autowired
	private WoInsurancePayService woInsurancePayService;
	
	@RequestMapping(value="/listInsurancepay",method = RequestMethod.POST)
	public String listSelectWoInsurancePay(@RequestParam(value="ppWorkNumber",required=true)int ppWorkNumber
										,@RequestParam(value="column",required=true)String column
										,@RequestParam(value="property",required=true)String property,Model model) {
		model.addAttribute("list", woInsurancePayService.listSelectWoInsurancePay(ppWorkNumber, column, property));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_insurancepay/listInsurancepay";
	}
	
	@RequestMapping(value="/listInsurancepay",method = RequestMethod.GET)
	public String listSelectWoInsurancePay(@RequestParam(value="ppWorkNumber",required=true)int ppWorkNumber,Model model) {
		model.addAttribute("list", woInsurancePayService.listSelectWoInsurancePay(ppWorkNumber));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_insurancepay/listInsurancepay";
	}
}
