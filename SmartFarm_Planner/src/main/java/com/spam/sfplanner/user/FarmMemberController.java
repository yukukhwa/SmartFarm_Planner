package com.spam.sfplanner.user;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.corporation.FarmDb;
import com.spam.sfplanner.corporation.FarmDao;
import com.spam.sfplanner.corporation.FarmService;

@Controller
public class FarmMemberController {
	@Autowired FarmMemberService farmMemberService;
	@Autowired FarmService farmService;
		private final static Logger LOGGER = LoggerFactory.getLogger(FarmMemberController.class);
		
		@RequestMapping(value="/listFarmMember", method=RequestMethod.GET)
		public String listSelectFarmMember(int fNumber, Model model) {
			LOGGER.info("FarmMemberController listFarmMember 호출");
			List<FarmMemberDb> farmMemberList = farmMemberService.listFarmMember(fNumber);
			model.addAttribute("farmMemberList", farmMemberList);
			System.out.println("farmMemberList===> "+farmMemberList);
			return "user/farm_member/listFarmMember";
		}
		
		@Transactional
		@RequestMapping(value="/addFarmMember", method=RequestMethod.POST)
		public String insertFarmMember(FarmMemberView farmMemberView) {
			LOGGER.info("FarmMemberController 호출");
			LOGGER.info("FarmMemberView 내용 ====> " + farmMemberView.toString());
			farmService.insertFarm(farmMemberView);
			farmMemberService.insertFarmMember(farmMemberView);
			return "redirect:/";
		}
		
		@RequestMapping(value="/addFarmMember", method=RequestMethod.GET)
		public String insertFarmMember() {
			return "user/farm_member/addFarmMember";
		}
}
