//[유국화]
package com.spam.sfplanner.actresult;

import java.util.HashMap;
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
public class PpWoResultController { //작업단계결과 컨트롤러
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private PpWoResultService ppWoResultService;
	
	//작업단계결과 수정 화면에서 보낸 정보 처리하고 리스트로 리다이렉트
	@RequestMapping(value="/updateWorkResult", method=RequestMethod.POST)
	public String updateWorkResult(PpWoResult ppWoResult) {
		LOGGER.info("updateWorkResult get 호출");
		ppWoResultService.updateWorkResult(ppWoResult);
		return "redirect:/listAllWorkResult";
	}
	
	//작업단계결과 수정 화면으로 포워드	
	@RequestMapping(value="/updateWorkResult", method=RequestMethod.GET)
	public String oneSelectWorkResult(Model model
			, @RequestParam(value="wrNumber", required=true) int wrNumber) {
		LOGGER.info("oneSelectWorkResult get 호출");
		model.addAttribute("workResult", ppWoResultService.oneSelectWorkResult(wrNumber));
		return "actresult/pp_work_result/updateWorkResult";
	}
	
	//작업단계 등록화면에서 보낸 정보 입력처리
	@RequestMapping(value="/addWorkResult", method=RequestMethod.POST)
	public String insertWorkResult(PpWoResult ppWoResult) {
		LOGGER.info("insertWorkResult post 호출");
		ppWoResultService.insertWorkResult(ppWoResult);
		return "redirect:/listWorkResult"; //입력처리 후 작업단계결과 리스트화면으로 리다이렉트
	}
	
	//작업단계결과 등록 화면으로 포워드	
	@RequestMapping(value="/addWorkResult", method=RequestMethod.GET)
	public String insertWorkResult() {
		LOGGER.info("insertWorkResult get 호출");
		return "actresult/pp_work_result/addWorkResult";
	}
	
	//작업단계결과 전체리스트
	//get방식으로 작업단계결과 리스트화면으로 포워드
	@RequestMapping(value="/listWorkResult", method=RequestMethod.GET)
	public String listSelectWorkResult(Model model) {		
		LOGGER.info("listSelectWorkResult get 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		model.addAttribute("workResultList", ppWoResultService.listSelectWorkResult(map));		
		return "actresult/pp_work_result/listAllWorkResult";
	}	
	
	//작업단계결과 전체리스트
	//get방식으로 작업단계결과 리스트화면으로 포워드
	@RequestMapping(value="/listAllWorkResult", method=RequestMethod.GET)
	public String listAllSelectWorkResult(Model model) {		
		LOGGER.info("listAllSelectWorkResult get 호출");
		model.addAttribute("workResultList", ppWoResultService.listAllSelectWorkResult());		
		return "actresult/pp_work_result/listAllWorkResult";
	}	
}