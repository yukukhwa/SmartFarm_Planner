package com.spam.sfplanner.actresult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class WrEtcSpendPayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayController.class);
	@Autowired private WrEtcSpendPayService wrEtcSpendPayService;
	
	//기타지출비용 결과 수정 POST
	@RequestMapping(value="/updateWrEtcSpendPay", method=RequestMethod.POST)
	public String updateWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("기타지출비결과 수정 화면에서 POST");
		wrEtcSpendPayService.updateWrEtcSpendPay(wrEtcSpendPayDb);
		return "actresult/wr_etcspendpay/listWrEtcSpendPay";
	}
	
	//기타지출비용 결과 수정 GET
	@RequestMapping(value="/updateWrEtcSpendPay", method=RequestMethod.GET)
	public String updateWrEtcSpendPay(Model model) {
		LOGGER.info("기타지출비결과 수정 화면으로 포워드");
		int wrEtcspendpayNumber=6;
		model.addAttribute("wrEtcSpendPayDb", wrEtcSpendPayService.selectOneWrEtcSpendPay(wrEtcspendpayNumber));
		return "actresult/wr_etcspendpay/updateWrEtcSpendPay";
	}
	
	//test
	//기타지출비용 결과 전체리스트 GET
	@RequestMapping(value="/listWrEtcSpendPay", method=RequestMethod.GET)
	public String selectListWrEtcSpendPay(Model model) {			
		LOGGER.info("리스트 기타지출비 화면에서 GET");
		int wrNumber=1;
		LOGGER.debug("리스트 리턴값:"+wrEtcSpendPayService.selectListWrEtcSpendPay(wrNumber));
		model.addAttribute("list", wrEtcSpendPayService.selectListWrEtcSpendPay(wrNumber));
		return "actresult/wr_etcspendpay/listWrEtcSpendPay";
	}
		
		
	//기타지출비용 결과 등록 POST
	@RequestMapping(value="/addWrEtcSpendPay", method=RequestMethod.POST)
	public String insertWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("기타지출비결과 등록 화면에서 POST");
		wrEtcSpendPayService.insertWrEtcSpendPay(wrEtcSpendPayDb);
		return "rediredt:/home";
	}
	
	//기타지출비용 결과 등록 GET
	@RequestMapping(value="/addWrEtcSpendPay", method=RequestMethod.GET)
	public String insertWrEtcSpendPay() {
		LOGGER.info("기타지출비결과 등록 화면으로 포워드");
		return "actresult/wr_etcspendpay/addWrEtcSpendPay";
	}
}
