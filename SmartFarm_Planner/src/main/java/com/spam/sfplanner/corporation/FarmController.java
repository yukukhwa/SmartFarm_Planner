/*[김재희]*/
package com.spam.sfplanner.corporation;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class FarmController {
	@Autowired FarmService farmService;
		private final static Logger LOGGER = LoggerFactory.getLogger(FarmController.class);
		
		/*updateFarm에서 get방식으로 들어올 때 수정화면 조회*/
		@RequestMapping(value="updateFarm", method=RequestMethod.GET)
		public String updateFarm(Model model, String fName) {
			model.addAttribute("farmDb", farmService.oneSelectFarm(fName));
			return "/corporation/farm/updateFarm";
		}
		
		// 선택된 농가 하나의 상세정보 보기로 포워드
		@RequestMapping(value="oneFarm", method=RequestMethod.GET)
		public String oneSelectFarm(Model model, String fName) {
			LOGGER.info("FarmController oneSelectFarm 호출");
			model.addAttribute("farmDb", farmService.oneSelectFarm(fName));
			System.out.println(farmService.oneSelectFarm(fName));
			return "corporation/farm/oneFarm";
		}
		
		/*listFarm에서 post방식으로 들어올때 listFarm으로 포워드*/
		@RequestMapping(value="listFarm", method=RequestMethod.POST)
		public String searchFarmList(String fName, Model model) {
			List<Farm> list = farmService.searchlistSelectFarm(fName);
			model.addAttribute("list", list);
			System.out.println("search list==> "+list);
			return "corporation/farm/listFarm";
		}
		
		// 등록된 전체 농가 리스트로 포워드
		@RequestMapping(value="listFarm", method=RequestMethod.GET)
		public String listSelectFarm(Model model) {
			LOGGER.info("FarmController listSelectFarm 호출");
			List<Farm> list = farmService.listSelectFarm();
			System.out.println("FarmSelect list ---> "+list);
			model.addAttribute("list", list);
			return "corporation/farm/listFarm";
		}
		
		@RequestMapping(value="addFarm", method=RequestMethod.GET)
		public String insertFarm() {
			return "corporation/farm/addFarm";
		}
}
