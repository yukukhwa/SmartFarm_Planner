//[유국화]
package com.spam.sfplanner.actresult;

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
	
	/**
	 * 작업단계 전체리스트화면 GET
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listWorkResult", method=RequestMethod.GET)
	public String listSelectWorkResult(Model model) {
		LOGGER.info("작업단계결과 전체리스트 화면으로 포워드");
		model.addAttribute("list",ppWoResultService.listSelectWorkResult());
		return "actresult/pp_work_result/askWorkResult";
	}
	
	/**
	 * 작업단계 등록화면 POST
	 * @param ppWoResult
	 * @return
	 */
	@RequestMapping(value="/addWorkResult", method=RequestMethod.POST)
	public String insertWorkResult(PpWoResult ppWoResult) {
		LOGGER.info("작업단계결과 등록 화면에서 포스트 보냄");
		ppWoResultService.insertWorkResult(ppWoResult);
		return "redirect:/home";
	}
	
	/**
	 * 작업단계 등록화면 GET
	 * @return
	 */
	@RequestMapping(value="/addWorkResult", method=RequestMethod.GET)
	public String insertWorkResult() {
		LOGGER.info("작업단계결과 등록 화면으로 포워드");
		return "actresult/pp_work_result/addWorkResult";
	}
}