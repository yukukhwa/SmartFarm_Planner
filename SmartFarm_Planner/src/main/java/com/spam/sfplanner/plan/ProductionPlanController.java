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
	 * 계획서 상세화면 매핑
	 * @param ppNumber
	 * @param model
	 * @return 계획서 상세화면
	 */
	@RequestMapping(value="/onePlanner",method = RequestMethod.GET)
	public String oneSelectProductionPlan(@RequestParam(value="ppNumber",required=false)int ppNumber,Model model) {
		model.addAttribute("productionPlan", productionPlanService.oneSelectProductionPlan(ppNumber));
		return "plan/productionplan/onePlanner";
	}
	
	/**
	 * 계획서 농가전체 리스트 화면으로 가는 매핑
	 * @param column
	 * @param property
	 * @param model
	 * @return 검색 결과 리스트
	 */
	@RequestMapping(value="/listPlanner",method = RequestMethod.POST)
	public String listSelectProductionPlan(@RequestParam(value="column",required=true)String column
										,@RequestParam(value="property",required=false)Object property,Model model) {
		model.addAttribute("list", productionPlanService.listSelectProductionPlan(column, property));
		return "plan/productionplan/listPlanner";
	}
	
	/**
	 * 계획서 농가전체 리스트 화면으로 가는 매핑
	 * @param model
	 * @return 계획서 리스트 화면
	 */
	@RequestMapping(value="/listPlanner",method = RequestMethod.GET)
	public String listSelectProductionPlan(Model model) {
		model.addAttribute("list", productionPlanService.listSelectProductionPlan());
		return "plan/productionplan/listPlanner";
	}
	
	/**
	 * 계획서 등록 처리 매핑
	 * @param productionPlan
	 * @param session
	 * @return 계획서 리스트 화면
	 */
	@RequestMapping(value="/addPlanner",method = RequestMethod.POST)
	public String insertProductionPlan(ProductionPlan productionPlan,HttpSession session) {
		System.out.println(productionPlan.toString());
		return "plan/productionplan/listPlanner";
	}
	
	/**
	 * 계획서 등록화면으로 가는 매핑
	 * @param session
	 * @param model
	 * @return 계획서 등록화면
	 */
	@RequestMapping(value="/addPlanner",method = RequestMethod.GET)
	public String insertProductionPlan(HttpSession session,Model model) {
		model.addAttribute("titleList", productionPlanService.insertProductionPlan(session));
		return "plan/productionplan/addPlanner";
	}
}
