//[유국화]
package com.spam.sfplanner.actresult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WrNeRentPayController {
@Autowired private WrNeRentPayService wrNeedEquipService;
	
	/**
	 * 필요장비결과별 대여비결과 전체리스트화면 GET
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listNeRentpay", method=RequestMethod.GET)
	public String listSelectWorkResult(Model model) {
		model.addAttribute("list", wrNeedEquipService.listselectWrNeRentPay());
		return "actresult/wr_ne_rentpay/listNeRentpay";
	}
}
