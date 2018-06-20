/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.category.CategoryThemeService;

@Controller
public class WoHumanPayController {
	@Autowired WoHumanPayService woHumanPayService;
	@Autowired CategoryThemeService categoryThemeService;
	@Autowired PpWorkService ppWorkService;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoHumanPayController.class);
	
	/*삭제처리 겟방식으로 요청시 삭제처리가 되어 home으로 리다이렉트*/ 
	@RequestMapping(value="/deleteWoHumanPay", method=RequestMethod.GET)
	public String deleteWoHumanPay(int eHumanpayNumber) {
		woHumanPayService.deleteWoHumanPay(eHumanpayNumber);
		return "redirect:/home";
	}
	
	/*수정처리*/
	@RequestMapping(value="/updateHumanPay", method=RequestMethod.POST)
	public String updateWoHumanPay(WoHumanPay woHumanPay) {
		System.out.println("woHumanPay update ==> "+woHumanPay);
		LOGGER.info("WoHumanPayController UPDATE 호출");
		woHumanPayService.updateWoHumanPay(woHumanPay);
		return "plan/wo_humanpay/updateHumanPay";
	}
	
	/*수정할 해당인건비 하나의 정보들을 출력*/ 
	@RequestMapping(value="/updateHumanPay", method=RequestMethod.GET)
	public String oneSelectWoHumanPay(int eHumanpayNumber, int ppNumber, Model model) {
		System.out.println("ppNumber updateHumanPay ==> "+ppNumber);
		Map<String, Object> map = woHumanPayService.oneSelectWoHumanPay(eHumanpayNumber, ppNumber);
		model.addAttribute("categoryThemeList", map.get("categoryThemeList"));
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		model.addAttribute("woHumanPay", map.get("woHumanPay"));
		return "plan/wo_humanpay/updateHumanPay";
	}
	
	/*검색화면 폼에서 post방식으로 요청받을 시 검색조건에 따른 리스트를 출력해 예상인건비리스트로 포워드*/
	@RequestMapping(value="/listHumanPay", method=RequestMethod.POST)
	public String listSelectWoHumanPay(Model model
									, int ppWorkNumber
									, String searchHumanPayOption
									, String searchKeyword) {
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("list", woHumanPayService.listSelectWoHumanPay(searchKeyword, searchHumanPayOption, ppWorkNumber));
		return "plan/wo_humanpay/listHumanPay";
	}
	
	/*예상 인건비 전체 리스트를 출력해 list로 포워드*/ 
	@RequestMapping(value="/listHumanPay", method=RequestMethod.GET)
	public String listSelectWoHumanPay(Model model, int ppWorkNumber) {
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("list", woHumanPayService.listSelectWoHumanPay(ppWorkNumber));
		return "plan/wo_humanpay/listHumanPay";
	}
	
	/*예상 인건비 등록화면으로 post로 요청시 예상인건비 정보들이 등록처리되어 등록화면폼으로 포워드*/
	@RequestMapping(value="/addHumanPay", method=RequestMethod.POST)
	public String insertWoHumanPay(WoHumanPay woHumanPay) {
		System.out.println("add woHumanPay ==> "+woHumanPay);
		woHumanPayService.insertWoHumanPay(woHumanPay);
		return "plan/wo_humanpay/addHumanPay";
	}
	
	/*예상 인건비 등록화면 폼으로 포워드*/
	@RequestMapping(value="/addHumanPay", method=RequestMethod.GET)
	public String insertWoHumanPay(Model model, int ppNumber) {
		Map<String, Object> map = woHumanPayService.insertWoHumanPay(ppNumber);
		model.addAttribute("cateTheme", map.get("cateTheme"));
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		return "plan/wo_humanpay/addHumanPay";
	}
}
