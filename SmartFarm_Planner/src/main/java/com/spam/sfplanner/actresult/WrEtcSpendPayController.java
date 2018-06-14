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
public class WrEtcSpendPayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayController.class);
	@Autowired private WrEtcSpendPayService wrEtcSpendPayService;
	
	/**
	 * 기타지출비용 결과 수정화면에서 POST로 받아서 업데이트 
	 * @param wrEtcSpendPay
	 * @return 기타지출비용 결과 리스트로 포워드
	 */
	@RequestMapping(value="/updateWrEtcSpendPay", method=RequestMethod.POST)
	public String updateWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("기타지출비결과 수정 화면에서 POST");
		wrEtcSpendPayService.updateWrEtcSpendPay(wrEtcSpendPay);
		return "actresult/wr_etcspendpay/listWrEtcSpendPay";
	}
	
	/**
	 * 기타지출비용 결과 wrEtcspendpayNumber에 해당하는 정보 수정화면 GET으로 출력
	 * @param model, wrEtcspendpayNumber(test용)
	 * @return 기타지출비용 결과 수정화면으로 포워드
	 */
	@RequestMapping(value="/updateWrEtcSpendPay", method=RequestMethod.GET)
	public String oneSelectWrEtcSpendPay(Model model) {
		LOGGER.info("기타지출비결과 수정 화면으로 포워드");
		int wrEtcspendpayNumber=6;
		model.addAttribute("wrEtcSpendPayDb", wrEtcSpendPayService.oneSelectWrEtcSpendPay(wrEtcspendpayNumber));
		return "actresult/wr_etcspendpay/updateWrEtcSpendPay";
	}
	
	/**
	 * 기타지출비용 결과 전체리스트 GET으로 출력
	 * @param model
	 * @return 기타지출비용 결과 전체리스트 화면으로 포워드
	 */
	@RequestMapping(value="/listWrEtcSpendPay", method=RequestMethod.GET)
	public String listSelectWrEtcSpendPay(Model model) {			
		LOGGER.info("리스트 기타지출비 화면에서 GET");
		int wrNumber=1;		
		model.addAttribute("list", wrEtcSpendPayService.listSelectWrEtcSpendPay(wrNumber));
		return "actresult/wr_etcspendpay/listWrEtcSpendPay";
	}		
		
	/**
	 * 기타지출비용 결과 등록화면에서 POST로 받아 인서트
	 * @param wrEtcSpendPay
	 * @return 홈(메인)화면으로 리다이렉트
	 */
	@RequestMapping(value="/addWrEtcSpendPay", method=RequestMethod.POST)
	public String insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("기타지출비결과 등록 화면에서 POST");
		wrEtcSpendPayService.insertWrEtcSpendPay(wrEtcSpendPay);
		return "redirect:/home";
	}
	
	/**
	 * 기타지출비용 결과 등록화면 GET으로 출력
	 * @return 기타지출비용 결과 등록화면 포워드
	 */
	@RequestMapping(value="/addWrEtcSpendPay", method=RequestMethod.GET)
	public String insertWrEtcSpendPay() {
		LOGGER.info("기타지출비결과 등록 화면으로 포워드");
		return "actresult/wr_etcspendpay/addWrEtcSpendPay";
	}
}