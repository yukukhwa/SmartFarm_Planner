// [유국화]
package com.spam.sfplanner.actresult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PpWoResultController {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	
	@RequestMapping(value="/addWorkResult", method=RequestMethod.POST)
	public String addWorkResult(PpWoResultRequestDb list) {
		LOGGER.info("작업단계결과 등록 화면에서 포스트 보냄");
		System.out.println(list);
		LOGGER.debug("list : "+list.getInsuranceList());

		return "redirect:/";
	}
	
	
	@RequestMapping(value="/addWorkResult", method=RequestMethod.GET)
	public String addWorkResult() {
		LOGGER.info("작업단계결과 등록 화면으로 포워드");
		return "actresult/pp_work_result/addWorkResult";
	}
}
