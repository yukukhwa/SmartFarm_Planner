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

@Controller
public class PpWoResultController {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private PpWoResultService ppWoResultService;
	
	//작업단계결과 전체리스트 화면으로 포워드	 
	@RequestMapping(value="/listWorkResult", method=RequestMethod.GET)
	public String listSelectWorkResult(Model model) {
		LOGGER.info("listSelectWorkResult 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppResultlistNumber", 1); //테스트 : 실행결과리스트넘버5
		model.addAttribute("workResultList",ppWoResultService.listSelectWorkResult(map));
		return "actresult/pp_work_result/listWorkResult";
	}
	
	//작업단계 등록화면에서 보낸 정보 입력처리
	@RequestMapping(value="/addWorkResult", method=RequestMethod.POST)
	public String insertWorkResult(PpWoResult ppWoResult) {
		LOGGER.info("insertWorkResult 호출");
		ppWoResultService.insertWorkResult(ppWoResult);
		return "redirect:/listWorkResult";
	}
	
	//작업단계결과 등록 화면으로 포워드	
	@RequestMapping(value="/addWorkResult", method=RequestMethod.GET)
	public String insertWorkResult() {
		LOGGER.info("insertWorkResult 호출");
		return "actresult/pp_work_result/addWorkResult";
	}
}