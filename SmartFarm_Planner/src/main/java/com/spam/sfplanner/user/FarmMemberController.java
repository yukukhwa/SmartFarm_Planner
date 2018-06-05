package com.spam.sfplanner.user;

import org.apache.log4j.spi.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FarmMemberController {
	@Autowired FarmMemberService farmMemberService;
		private final static Logger LOGGER = org.slf4j.LoggerFactory.getLogger(FarmMemberController.class);
		
		@RequestMapping(value="/addFarmMember", method=RequestMethod.GET)
		public String insertFarmMember() {
			return "user/farm_member/addFarmMember";
		}
}
