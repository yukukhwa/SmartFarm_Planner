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
public class WrInsurancePayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrInsurancePayController.class);
	@Autowired private WrInsurancePayService wrInsurancePayService;
	
	/**
	 * 보험비 결과 전체리스트 GET으로 출력
	 * @param model
	 * @return 보험비 결과 전체리스트 화면으로 포워드
	 */
	@RequestMapping(value="/listlistWrInsurancePay", method=RequestMethod.GET)
	public String listSelectWrEtcSpendPay(Model model) {			
		LOGGER.info("리스트 보험비 화면으로 GET");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWoResult.wrNumber", 1);
		model.addAttribute("list", wrInsurancePayService.WrInsurancePayService(map));
		return "actresult/wr_insurancepay/listWrInsurancePay";
	}
	
	
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
