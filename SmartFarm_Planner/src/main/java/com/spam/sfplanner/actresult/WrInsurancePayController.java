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
public class WrInsurancePayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrInsurancePayController.class);
	@Autowired private WrInsurancePayService wrInsurancePayService;
	
	//보험비결과 전체리스트 화면으로 포워드
	@RequestMapping(value="/listWrInsurancePay", method=RequestMethod.GET)
	public String listSelectWrInsurancePay(Model model, @RequestParam(value="wrNumber") int wrNumber) {			
		LOGGER.info("listSelectWrInsurancePay get 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("wrNumber", wrNumber); 
		model.addAttribute("wrInsurancePayList", wrInsurancePayService.listSelectWrInsurancePay(map));
		return "actresult/wr_insurancepay/listWrInsurancePay";
	}
	
	//보험비결과 등록화면에서 보낸 정보 입력처리
	@RequestMapping(value="/addWrInsurancePay", method=RequestMethod.POST)
	public String insertWrInsurancePay(WrInsurancePay wrinsurancepaydb) {
		LOGGER.info("insertWrInsurancePay post 호출");		
		return "actresult/wr_insurancepay/listWrInsurancePay";
	}
	
	//보험비결과 등록화면으로 포워드
	@RequestMapping(value="/addWrInsurancePay", method=RequestMethod.GET)
	public String insertWrInsurancePay(Model model) {
		LOGGER.info("insertWrInsurancePay get 호출");
		return "actresult/wr_insurancepay/addWrInsurancePay";
	}
}
