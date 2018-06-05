package com.spam.sfplanner.corporation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FarmController {
	@Autowired FarmService farmService;
		private final static Logger LOGGER = LoggerFactory.getLogger(FarmController.class);
		
		@RequestMapping(value="addFarm", method=RequestMethod.GET)
		public String insertFarm() {
			return "corporation/farm/addFarm";
		}
}
