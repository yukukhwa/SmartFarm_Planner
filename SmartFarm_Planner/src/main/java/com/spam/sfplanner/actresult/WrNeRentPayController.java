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

@Controller
public class WrNeRentPayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrInsurancePayController.class);
	@Autowired private WrNeRentPayService wrNeedEquipService;
	
	//대여비결과 전체리스트 화면으로 포워드
	@RequestMapping(value="/listNeRentpay", method=RequestMethod.GET)
	public String listSelectWorkResult(Model model) {
		LOGGER.info("listSelectWrNeedEquip get 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("wrNeedequipNumber", 1); //테스트 : 필요장비결과넘버1
		model.addAttribute("list", wrNeedEquipService.listselectWrNeRentPay(map));
		return "actresult/wr_ne_rentpay/listNeRentpay";
	}
}
