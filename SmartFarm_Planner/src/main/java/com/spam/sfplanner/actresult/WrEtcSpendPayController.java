package com.spam.sfplanner.actresult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.login.FindController;

@Controller
public class WrEtcSpendPayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayController.class);
	
	@RequestMapping(value="/addWrEtcSpendPay", method=RequestMethod.GET)
	public String findFarmPw() {
		LOGGER.info("기타지출비결과 등록 화면으로 포워드");
		return "actresult/wr_etcspendpay/addWrEtcSpendPay";
	}
}
