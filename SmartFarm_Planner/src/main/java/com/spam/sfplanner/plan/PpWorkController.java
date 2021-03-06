/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PpWorkController {
	@Autowired PpWorkService ppWorkService;
	@Autowired ProductionPlanService productionPlanService;
	
	private final static Logger LOGGER = LoggerFactory.getLogger(PpWorkController.class);
	
	@RequestMapping(value="/updateWorkPlan", method=RequestMethod.POST)
	public String updatePpWork(PpWork ppWork) {
		LOGGER.info("PPWORK UPDATE처리");
		System.out.println("PPwork ==> "+ppWork);
		ppWorkService.updatePpWork(ppWork);
		return "redirect:/home";
	}
	
	@RequestMapping(value="/deletePpWork", method=RequestMethod.GET)
	public String deletePpWork(int ppWorkNumber) {
		System.out.println("delete ppWorkNumber==>"+ppWorkNumber);
		ppWorkService.deletePpWork(ppWorkNumber);
		return "redirect:/home";
	}
	
	@RequestMapping(value="/oneWorkPlan", method=RequestMethod.GET)
	public String oneSelectPpWork(Model model, int ppWorkNumber) {
		LOGGER.info("PpWorkController 호출");
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("ppWork", ppWorkService.oneSelectPpWork(ppWorkNumber));
		return "plan/pp_work/oneWorkPlan";
	}
	
	@RequestMapping(value="/updateWorkPlan", method=RequestMethod.GET)
	public String updatePpWork(Model model, int ppWorkNumber) {
		Map<String, Object> map = ppWorkService.updatePpWork(ppWorkNumber);
		model.addAttribute("productionPlanList", map.get("productionPlanList"));
		model.addAttribute("ppWork", map.get("ppWork"));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/pp_work/updateWorkPlan";
	}
	
	@RequestMapping(value="/listWorkPlan", method=RequestMethod.POST)
	public String listSelectPpWork(Model model
								, @RequestParam(value="searchWorkPlanOption") String searchWorkPlanOption
								, @RequestParam(value="searchKeyword", defaultValue="")String searchKeyword
								, int ppNumber) {
		LOGGER.info("PpWorkController 호출 listWorkPlan");
		System.out.println("ppNumber==> "+ppNumber);
		model.addAttribute("list", ppWorkService.searchListSelectPpWork(searchWorkPlanOption, searchKeyword, ppNumber));
		model.addAttribute("ppNumber", ppNumber);
		return "plan/pp_work/listWorkPlan";
	}
	
	@RequestMapping(value="/listWorkPlan", method=RequestMethod.GET)
	public String listSelectPpWork(Model model, int ppNumber) {
		model.addAttribute("list", ppWorkService.listSelectPpWork(ppNumber));
		model.addAttribute("ppNumber", ppNumber);
		return "plan/pp_work/listWorkPlan";
	}
	
	@RequestMapping(value="/addWorkPlan", method=RequestMethod.POST)
	public String insertPpWork(PpWork ppWork) {
		System.out.println("add ppWork ---> "+ppWork);
		ppWorkService.insertPpWork(ppWork);
		return "plan/pp_work/addWorkPlan";
	}
	
	@RequestMapping(value="/addWorkPlan", method=RequestMethod.GET)
	public String insertPpWork(Model model) {
		Map<String, Object> map = null;
		model.addAttribute("productionPlanList", ppWorkService.insertPpWork(map));
		return "plan/pp_work/addWorkPlan";
	}
}
