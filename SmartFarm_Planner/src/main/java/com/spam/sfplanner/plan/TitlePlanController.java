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
public class TitlePlanController {
	
	@Autowired
	private TitlePlanService titlePlanService;
	
	/**
	 * 계획명 수정 처리 컨트롤러
	 * @param 계획명 수정 화면에서 받아온 데이터
	 * @return 계획명 리스트 화면
	 */
	@RequestMapping(value="/updateTitle",method=RequestMethod.POST)
	public String updateTitlePlan(TitlePlan titlePlan) {
		titlePlanService.updateTitlePlan(titlePlan);
		return "redirect:/listTitle";
	}
	
	/**
	 * 계획명 수정 화면 출력 처리 컨트롤러
	 * @param 계획명 넘버
	 * @param model
	 * @return 계획명 수정 화면
	 */
	@RequestMapping(value="/updateTitle",method=RequestMethod.GET)
	public String updateTitlePlan(@RequestParam(value="ppNameNumber",required=true)int ppNameNumber,Model model) {
		Map<String, Object> map = titlePlanService.updateTitlePlan(ppNameNumber);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("title", map.get("title"));
		return "plan/title/updateTitle";
	}
	
	/**
	 * 계획명 삭제 처리 컨트롤러
	 * @param 계획명 넘버
	 * @return 계획명 리스트 화면
	 */
	@RequestMapping(value="/deleteTitle",method = RequestMethod.GET)
	public String deleteTitlePlan(@RequestParam(value="ppNameNumber",required=true)int ppNameNumber) {
		titlePlanService.deleteTitlePlan(ppNameNumber);
		return "redirect:/listTitle";
	}
	
	/**
	 * 검색 조건에 따른 계획명 리스트 출력 컨트롤러
	 * @param model
	 * @param 검색범위
	 * @param 검색어
	 * @return 계획명 리스트
	 */
	@RequestMapping(value="/listTitle",method = RequestMethod.POST)
	public String listSelectTitlePlan(Model model,@RequestParam(value="column",required=true)String column
									,@RequestParam(value="property",required=false)String property) {
		model.addAttribute("list", titlePlanService.listSelectTitlePlan(column, property));
		return "plan/title/listTitle";
	}
	
	/**
	 * 계획명 리스트 출력 컨트롤러
	 * @param model
	 * @return 계획명 리스트 화면
	 */
	@RequestMapping(value="/listTitle",method = RequestMethod.GET)
	public String listSelectTitlePlan(Model model) {
		model.addAttribute("list", titlePlanService.listSelectTitlePlan());
		return "plan/title/listTitle";
	}
	
	/**
	 * 계획명 등록 처리 컨트롤러
	 * @param 품목넘버,계획명
	 * @param 농가 넘버
	 * @return 계획명 리스트 화면
	 */
	@RequestMapping(value="/addTitle",method = RequestMethod.POST)
	public String insertTitlePlan(TitlePlan titlePlan,HttpSession session) {
		titlePlanService.insertTitlePlan(titlePlan, session);
		return "redirect:/addPlanner";
	}
	
	/**
	 * 계획명 등록 화면 출력 컨트롤러
	 * @param model
	 * @return 계획명 등록 화면
	 */
	@RequestMapping(value="/addTitle",method = RequestMethod.GET)
	public String insertTitlePlan(Model model) {
		model.addAttribute("list", titlePlanService.insertTitlePlan());
		return "plan/title/addTitle";
	}
}
