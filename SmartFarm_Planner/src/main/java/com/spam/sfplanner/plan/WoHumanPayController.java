/*[김재희]*/
package com.spam.sfplanner.plan;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.category.CategoryTheme;
import com.spam.sfplanner.category.CategoryThemeService;

@Controller
public class WoHumanPayController {
	@Autowired WoHumanPayService woHumanPayService;
	@Autowired CategoryThemeService categoryThemeService;
	@Autowired PpWorkService ppWorkService;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoHumanPayController.class);
	
	@RequestMapping(value="/updateHumanPay", method=RequestMethod.GET)
	public String updateWoHumanPay() {
		return "plan/wo_humanpay/updateHumanPay";
	}
	
	@RequestMapping(value="/listHumanPay", method=RequestMethod.POST)
	public String listSelectWoHumanPay(Model model
									, int ppWorkNumber
									, String searchHumanPayOption
									, String searchKeyword) {
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("list", woHumanPayService.listSelectWoHumanPay(searchKeyword, searchHumanPayOption, ppWorkNumber));
		return "plan/wo_humanpay/listHumanPay";
	}
	
	@RequestMapping(value="/listHumanPay", method=RequestMethod.GET)
	public String listSelectWoHumanPay(Model model, int ppWorkNumber) {
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("list", woHumanPayService.listSelectWoHumanPay(ppWorkNumber));
		return "plan/wo_humanpay/listHumanPay";
	}
	
	/*예상 인건비 등록화면에서 post방식으로 요청*/
	@RequestMapping(value="/addHumanPay", method=RequestMethod.POST)
	public String insertWoHumanPay(WoHumanPay woHumanPay) {
		System.out.println("add woHumanPay ==> "+woHumanPay);
		woHumanPayService.insertPpWork(woHumanPay);
		return "plan/wo_humanpay/addHumanPay";
	}
	
	/*예상 인건비 등록화면 폼으로 포워드*/
	@RequestMapping(value="/addHumanPay", method=RequestMethod.GET)
	public String insertWoHumanPay(Model model, int ppNumber) {
		model.addAttribute("cateTheme", categoryThemeService.listSelectCategoryTheme());
		model.addAttribute("ppWorkList", ppWorkService.listSelectPpWork(ppNumber));
		model.addAttribute("ppNumber", ppNumber);
		return "plan/wo_humanpay/addHumanPay";
	}
}
