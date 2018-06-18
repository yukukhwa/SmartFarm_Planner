/*나성수*/
package com.spam.sfplanner.plan;

import java.util.Map;

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
	
	@RequestMapping(value="/myListPlanner",method = RequestMethod.GET)
	public String myListSelectProductionPlan(@RequestParam(value="fNumber",required=true)int fNumber,Model model) {
		model.addAttribute("list", productionPlanService.myListSelectProductionPlan(fNumber));
		return "plan/productionplan/myListPlanner";
	}
	
	@RequestMapping(value="/updatePlanner",method = RequestMethod.POST)
	public String updateProductionPlan(ProductionPlan productionPlan) {
		productionPlanService.updateProductionPlan(productionPlan);
		return "redirect:/listPlanner";
	}
	
	@RequestMapping(value="/updatePlanner",method = RequestMethod.GET)
	public String updateProductionPlan(@RequestParam(value="ppNumber",required=true)int ppNumber,HttpSession session,Model model) {
		Map<String, Object> map = productionPlanService.updateProductionPlan(ppNumber, session);
		model.addAttribute("titleList", map.get("titleList"));
		model.addAttribute("productionPlan", map.get("productionPlan"));
		return "plan/productionplan/updatePlanner";
	}
	
	@RequestMapping(value="/deletePlanner",method = RequestMethod.GET)
	public String deleteProductionPlan(@RequestParam(value="ppNumber",required=true)int ppNumber) {
		productionPlanService.deleteProductionPlan(ppNumber);
		return "redirect:/listPlanner";
	}
	
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
		productionPlanService.insertProductionPlan(productionPlan, session);
		return "redirect:/listPlanner";
	}
	
	/**
	 * 계획서 등록화면으로 가는 매핑
	 * @param session
	 * @param model
	 * @return 계획서 등록화면
	 */
	@RequestMapping(value="/addPlanner",method = RequestMethod.GET)
	public String insertProductionPlan(HttpSession session,Model model) {
		Map<String, Object> map = productionPlanService.insertProductionPlan(session);
		model.addAttribute("titleList", map.get("titleList"));
		model.addAttribute("themeList", map.get("themeList"));
		return "plan/productionplan/addPlanner";
	}
}
