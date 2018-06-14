/*나성수*/
package com.spam.sfplanner.plan;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductionPlanController {

	@Autowired
	private ProductionPlanService productionPlanService;
	
	/**
	 * 계획서 자기농가만 리스트 화면으로 가는 매핑
	 * @param 	
	 * @return
	 */
	@RequestMapping(value="/onePlanner",method = RequestMethod.GET)
	public String oneSelectActResult() {		
		return "plan/productionplan/onePlanner";
	}
	
	/**
	 * 계획서 농가전체 리스트 화면으로 가는 매핑
	 * @return
	 */
	@RequestMapping(value="/listPlanner",method = RequestMethod.POST)
	public String listSelectProductionPlan(@RequestParam(value="column",required=true)String column
										,@RequestParam(value="property",required=false)Object property,Model model) {
		model.addAttribute("list", productionPlanService.listSelectProductionPlan(column, property));
		return "plan/productionplan/listPlanner";
	}
	
	/**
	 * 계획서 농가전체 리스트 화면으로 가는 매핑
	 * @return
	 */
	@RequestMapping(value="/listPlanner",method = RequestMethod.GET)
	public String listSelectProductionPlan(Model model) {
		model.addAttribute("list", productionPlanService.listSelectProductionPlan());
		return "plan/productionplan/listPlanner";
	}
	
	/**
	 * 계획서 등록화면에서 자기 계획서 리스트가는 매핑
	 * @param 	
	 * @return
	 */
	@RequestMapping(value="/addPlanner",method = RequestMethod.POST)
	public String insertProductionPlan(ProductionPlanDb productionPlanDb,HttpSession session) {
		System.out.println(productionPlanDb.toString());
		return "plan/productionplan/listPlanner";
	}
	
	/**
	 * 계획서 등록화면으로 가는 매핑
	 * @return
	 */
	@RequestMapping(value="/addPlanner",method = RequestMethod.GET)
	public String insertProductionPlan(HttpSession session,Model model) {
		model.addAttribute("titleList", productionPlanService.insertProductionPlan(session));
		return "plan/productionplan/addPlanner";
	}
}
