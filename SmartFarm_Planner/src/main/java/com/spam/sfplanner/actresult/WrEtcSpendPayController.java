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
public class WrEtcSpendPayController { //기타지출비결과 컨트롤러
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayController.class);
	@Autowired private WrEtcSpendPayService wrEtcSpendPayService;
	
	//기타지출비용결과 수정화면에서 보낸 정보 처리하고 리스트로 리다이렉트
	@RequestMapping(value="/updateWrEtcSpendPay", method=RequestMethod.POST)
	public String updateWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("updateWrEtcSpendPay post 호출");	
		wrEtcSpendPayService.updateWrEtcSpendPay(wrEtcSpendPay);
		return "redirect:/listWrEtcSpendPay";
	}
	
	//기타지출비용결과 수정화면으로 포워드
	@RequestMapping(value="/updateWrEtcSpendPay", method=RequestMethod.GET)
	public String oneSelectWrEtcSpendPay(Model model
			, @RequestParam(value="wrEtcspendpayNumber", required=true) int wrEtcspendpayNumber) {
		LOGGER.info("oneSelectWrEtcSpendPay get 호출");		
		model.addAttribute("wrEtcSpendPay", wrEtcSpendPayService.oneSelectWrEtcSpendPay(wrEtcspendpayNumber));
		return "actresult/wr_etcspendpay/updateWrEtcSpendPay";
	}		
		
	//기타지출비용결과 등록화면에서 보낸 정보 입력처리
	@RequestMapping(value="/addWrEtcSpendPay", method=RequestMethod.POST)
	public String insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("insertWrEtcSpendPay post 호출");
		wrEtcSpendPayService.insertWrEtcSpendPay(wrEtcSpendPay);
		return "redirect:/listWrEtcSpendPay"; //입력처리 후 기타지출비용결과 리스트화면으로 리다이렉트
	}
	
	//기타지출비용결과 등록화면으로 포워드
	@RequestMapping(value="/addWrEtcSpendPay", method=RequestMethod.GET)
	public String insertWrEtcSpendPay() {
		LOGGER.info("insertWrEtcSpendPay get 호출");
		return "actresult/wr_etcspendpay/addWrEtcSpendPay";
	}
	
	//작업단계결과 넘버별 기타지출비용결과리스트 화면으로 포워드	 
	@RequestMapping(value="/listWrEtcSpendPay", method=RequestMethod.GET)
	public String listSelectWrEtcSpendPay(Model model
			, @RequestParam(value="wrNumber", required=true) int wrNumber) {			
		LOGGER.info("listSelectWrEtcSpendPay get 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("wrNumber", wrNumber);
		model.addAttribute("wrEtcSpendPayList", wrEtcSpendPayService.listSelectWrEtcSpendPay(map));
		return "actresult/wr_etcspendpay/listWrEtcSpendPay";
	}
	
	//기타지출비용결과 전체리스트 화면으로 포워드	 
	@RequestMapping(value="/listAllWrEtcSpendPay", method=RequestMethod.GET)
	public String listAllSelectWrEtcSpendPay(Model model) {			
		LOGGER.info("listAllSelectWrEtcSpendPay get 호출");
		model.addAttribute("wrEtcSpendPayList", wrEtcSpendPayService.listAllSelectWrEtcSpendPay());
		return "actresult/wr_etcspendpay/listAllWrEtcSpendPay";
	}
}