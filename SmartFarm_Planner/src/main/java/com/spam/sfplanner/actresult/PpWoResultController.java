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
	
	// 작업단계 등록화면 POST
	@RequestMapping(value="/addWorkResult", method=RequestMethod.POST)
	public String addWorkResult(PpWoResultDb ppWoResultDb) {
		LOGGER.info("작업단계결과 등록 화면에서 포스트 보냄");
		LOGGER.debug("WrEtcSpendPayDb : "+ppWoResultDb.getWrEtcSpendPayDb());
		LOGGER.debug("WrHumanPayDb : "+ppWoResultDb.getWrHumanPayDb());
		LOGGER.debug("WrInsurancePayDb : "+ppWoResultDb.getWrInsurancePayDb());
		LOGGER.debug("WrMaterialsPayDb : "+ppWoResultDb.getWrMaterialsPayDb());
		LOGGER.debug("WrNeedEquipDb : "+ppWoResultDb.getWrNeedEquipDb());

		return "redirect:/home";
	}
	
	// 작업단계 등록화면 GET
	@RequestMapping(value="/addWorkResult", method=RequestMethod.GET)
	public String addWorkResult() {
		LOGGER.info("작업단계결과 등록 화면으로 포워드");
		return "actresult/pp_work_result/addWorkResult";
	}
}