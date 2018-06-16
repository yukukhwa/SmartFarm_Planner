/*나성수*/
package com.spam.sfplanner.plan;

import java.util.Map;

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
	
	@RequestMapping(value="/updateInsurancepay",method = RequestMethod.POST)
	public String updateWoInsurancePay(WoInsurancePay woInsurancePay) {
		woInsurancePayService.updateInsurancepay(woInsurancePay);
		return "redirect:/listPlanner";
	}
	
	@RequestMapping(value="/updateInsurancepay",method = RequestMethod.GET)
	public String updateWoInsurancePay(@RequestParam(value="ppNumber",required=true)int ppNumber
									,@RequestParam(value="eInsurancepayNumber",required=true)int eInsurancepayNumber,Model model) {
		Map<String, Object> map = woInsurancePayService.updateInsurancepay(ppNumber, eInsurancepayNumber);
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		model.addAttribute("themeList", map.get("themeList"));
		model.addAttribute("woInsurancePay", map.get("woInsurancePay"));
		return "plan/wo_insurancepay/updateInsurancepay";
	}
	
	@RequestMapping(value="/deleteInsurancepay",method = RequestMethod.GET)
	public String deleteWoInsurancePay(@RequestParam(value="eInsurancepayNumber",required=true)int eInsurancepayNumber) {
		woInsurancePayService.deleteWoInsurancePay(eInsurancepayNumber);
		return "redirect:/listPlanner";
	}
	
	@RequestMapping(value="/addInsurancepay",method = RequestMethod.POST)
	public String insertWoInsurancePay(WoInsurancePay woInsurancePay) {
		woInsurancePayService.insertWoInsurancePay(woInsurancePay);
		return "redirect:/listPlanner";
	}
	
	@RequestMapping(value="/addInsurancepay",method = RequestMethod.GET)
	public String insertWoInsurancePay(@RequestParam(value="ppNumber",required=true)int ppNumber,Model model) {
		Map<String, Object> map = woInsurancePayService.insertWoInsurancePay(ppNumber);
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		model.addAttribute("themeList", map.get("themeList"));
		return "plan/wo_insurancepay/addInsurancepay";
	}
	
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
		System.out.println(woInsurancePayService.listSelectWoInsurancePay(ppWorkNumber));
		model.addAttribute("list", woInsurancePayService.listSelectWoInsurancePay(ppWorkNumber));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_insurancepay/listInsurancepay";
	}
}
