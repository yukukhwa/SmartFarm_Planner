package com.spam.sfplanner.plan;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class PlanController {
	
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
	@RequestMapping(value="/listPlanner",method = RequestMethod.GET)
	public String listSelectActResult() {
		return "plan/productionplan/listPlanner";
	}
	
	/**
	 * 계획서 등록화면에서 자기 계획서 리스트가는 매핑
	 * @param 	
	 * @return
	 */
	@RequestMapping(value="/addPlanner",method = RequestMethod.POST)
	public String insertPlan(Model model) {		
		return "plan/productionplan/onePlanner";
	}
	
	/**
	 * 계획서 등록화면으로 가는 매핑
	 * @return
	 */
	@RequestMapping(value="/addPlanner",method = RequestMethod.GET)
	public String insertPlan() {
		return "plan/productionplan/addPlanner";
	}

}
