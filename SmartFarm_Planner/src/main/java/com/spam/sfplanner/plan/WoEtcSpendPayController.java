/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.category.CategoryEtcSpendPayService;
@Controller
public class WoEtcSpendPayController {
	@Autowired
	private WoEtcSpendPayService woEtcSpendPayService;
	@Autowired
	private CategoryEtcSpendPayService categoryEtcSpendpayService;
	@Autowired
	private PpWorkService ppWorkService;
	
	@RequestMapping(value="/updateEtcSpendPay", method=RequestMethod.GET)
	public String updateWoRentPay() {
		return "plan/wo_etcspendpay/updateEtcSpendPay";
	}
	
	@RequestMapping(value="/listWoEtcSpendPay", method=RequestMethod.POST)
	public String listSelectWoRentPay(int ppWorkNumber, String column, String property, Model model) {
		model.addAttribute("list", woEtcSpendPayService.listSelectWoEtcSpendPay(ppWorkNumber, column, property));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_etcspendpay/listWoEtcSpendPay";
	}
	
	@RequestMapping(value="/listWoEtcSpendPay", method=RequestMethod.GET)
	public String listSelectWoRentPay(int ppWorkNumber, Model model) {
		model.addAttribute("list", woEtcSpendPayService.listSelectWoEtcSpendPay(ppWorkNumber));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_etcspendpay/listWoEtcSpendPay";
	}
	
	@RequestMapping(value="/addWoEtcSpendPay", method=RequestMethod.POST)
	public String insertWoEtcSpendPay(WoEtcSpendPay woEtcSpendPay) {
		System.out.println("addWoEtcSpendPay===> "+woEtcSpendPay);
		woEtcSpendPayService.insertWoEtcSpendPay(woEtcSpendPay);
		return "plan/wo_etcspendpay/addWoEtcSpendPay";
	}
	
	@RequestMapping(value="/addWoEtcSpendPay", method=RequestMethod.GET)
	public String insertWoEtcSpendPay(Model model, int ppNumber) {
		Map<String, Object> map = woEtcSpendPayService.insertWoEtcSpendPay(ppNumber);
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		model.addAttribute("categoryEtcSpendPay", map.get("categoryEtcSpendPay"));
		return "plan/wo_etcspendpay/addWoEtcSpendPay";
	}
}
