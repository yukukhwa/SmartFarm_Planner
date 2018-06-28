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
public class WrNeedEquipController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrInsurancePayController.class);
	@Autowired private WrNeedEquipService wrNeedEquipService;
	
	//필요장비결과 등록화면에서 보낸 정보 입력처리
	@RequestMapping(value="/addWrNeedEquip", method=RequestMethod.POST)
	public String insertWrNeedEquip(WrNeedEquip wrNeedEquip) {
		LOGGER.info("insertWrNeedEquip post 호출");		
		return "actresult/wr_needrequip/listWrNeedEquip";
	}
	
	//필요장비결과 등록화면으로 포워드
	@RequestMapping(value="/addWrNeedEquip", method=RequestMethod.GET)
	public String insertWrNeedEquip(Model model) {
		LOGGER.info("insertWrNeedEquip get 호출");
		return "actresult/wr_needrequip/addWrNeedEquip";
	}
	
	//필요장비결과 전체리스트 화면으로 포워드
	@RequestMapping(value="/listWrNeedEquip", method=RequestMethod.GET)
	public String listSelectWrNeedEquip(Model model, @RequestParam(value="wrNumber") int wrNumber) {			
		LOGGER.info("listSelectWrNeedEquip get 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("wrNumber", wrNumber);
		model.addAttribute("wrNeedEquipList", wrNeedEquipService.listSelectWrNeedEquip(map));
		return "actresult/wr_needrequip/listWrNeedEquip";
	}	
}