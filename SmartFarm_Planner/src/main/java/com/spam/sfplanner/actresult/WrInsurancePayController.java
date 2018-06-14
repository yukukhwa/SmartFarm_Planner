package com.spam.sfplanner.actresult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WrInsurancePayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrInsurancePayController.class);
	
	@RequestMapping(value="/addWrInsurancePay", method=RequestMethod.POST)
	public String addWrInsurancePay(WrInsurancePay wrinsurancepaydb) {
		LOGGER.info("작업단계별 실제 보험비 화면에서 post로 넘김");
		
		return "actresult/wr_insurancepay/listWrInsurancePay";
	}
	
	@RequestMapping(value="/addWrInsurancePay", method=RequestMethod.GET)
	public String addWrInsurancePay(Model model) {
		LOGGER.info("작업단계별 실제 보험비 화면으로 포워드");
		// EInsurancepayNumber : 예상 보험비 넘버를 입력변수로 받아온다.
		// 화면에 뿌려줄 정보를 셀렉트한다.
		return "actresult/wr_insurancepay/addWrInsurancePay";
	}
}
