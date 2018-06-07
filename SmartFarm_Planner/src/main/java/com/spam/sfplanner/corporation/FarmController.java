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
		
		@RequestMapping(value="listFarm", method=RequestMethod.GET)
		public String listSelectFarm(Model model) {
			LOGGER.info("FarmController listSelectFarm 호출");
			List<FarmDb> list = farmService.listSelectFarm();
			System.out.println("FarmSelect list ---> "+list);
			model.addAttribute("list", list);
			return "corporation/farm/listFarm";
		}
		
		@RequestMapping(value="addFarm", method=RequestMethod.GET)
		public String insertFarm() {
			return "corporation/farm/addFarm";
		}
}
