/*[김재희]*/
package com.spam.sfplanner.user;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.corporation.FarmDb;
import com.spam.sfplanner.corporation.FarmDao;
import com.spam.sfplanner.corporation.FarmService;

@Controller
public class FarmMemberController {
	@Autowired FarmMemberService farmMemberService;
	@Autowired FarmService farmService;
		private final static Logger LOGGER = LoggerFactory.getLogger(FarmMemberController.class);
		
		/*한 농가회원의 정보를 상세보기*/
		@RequestMapping(value="oneFarmMember", method=RequestMethod.GET)
		public String oneSelectFarmMember(Model model
										, FarmMemberDb farmMemberDb) {
			LOGGER.info("FarmMemberController oneFarmMember 호출");
			System.out.println("fMemberId===>"+farmMemberDb);
			model.addAttribute("farmMemberInfo", farmMemberService.oneSelectFarmMember(farmMemberDb));
			System.out.println("farmMemberInfo =========> : "+farmMemberService.oneSelectFarmMember(farmMemberDb));
			return "user/farm_member/oneFarmMember";
		}
		
		/*하나의 농가의 농가회원전체리스트 보기*/ 
		@RequestMapping(value="/listFarmMember", method=RequestMethod.GET)
		public String listSelectFarmMember(int fNumber
										, Model model) {
			LOGGER.info("FarmMemberController listFarmMember 호출");
			farmMemberService.listFarmMember(fNumber);
			model.addAttribute("farmMemberList",farmMemberService.listFarmMember(fNumber));
			model.addAttribute("fNumber", fNumber);
			System.out.println("farmMemberList====> "+farmMemberService.listFarmMember(fNumber));
			return "user/farm_member/listFarmMember";
		}
		
		/*농가 회원가입 처리 post*/
		@Transactional
		@RequestMapping(value="/addFarmMember", method=RequestMethod.POST)
		public String insertFarmMember(FarmMemberView farmMemberView) {
			LOGGER.info("FarmMemberController 호출");
			LOGGER.info("FarmMemberView 내용 ====> " + farmMemberView.toString());
			farmService.insertFarm(farmMemberView);
			farmMemberService.insertFarmMember(farmMemberView);
			return "redirect:/";
		}
		
		/*농가 회원가입 폼으로 가기*/
		@RequestMapping(value="/addFarmMember", method=RequestMethod.GET)
		public String insertFarmMember() {
			return "user/farm_member/addFarmMember";
		}
}
