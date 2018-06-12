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
		
		
		/*삭제요청이 겟방식으로 넘어올때 삭제처리*/
		@RequestMapping(value="deleteFarmMember", method=RequestMethod.GET)
		public String deleteFarmMember(String fMemberId) {
			LOGGER.info("FarmMemberController deleteFarmMember 호출");
			farmMemberService.deleteFarmMember(fMemberId);
			return "redirect:/logout";
		}
		
		/*포스트 방식으로 넘어올때 수정처리*/
		@RequestMapping(value="updateFarmMember", method=RequestMethod.POST)
		public String updateFarmMember(FarmMemberView farmMemberView) {
			LOGGER.info("FarmMemberController updateFarmMember post 호출");
			farmMemberService.updateFarmMember(farmMemberView);
			return "redirect:/oneFarmMember?fMemberId="+farmMemberView.getfMemberId();
		}
		
		/*업데이트를 하기 위해 수정할 화면을 불러옴*/
		@RequestMapping(value="updateFarmMember", method=RequestMethod.GET)
		public String updateFarmMember(Model model, String fMemberId) {
			LOGGER.info("FarmMemberController updateFarmMember 호출");
			model.addAttribute("farmMemberDb", farmMemberService.oneSelectFarmMember(fMemberId));
			return "user/farm_member/updateFarmMember";
		}
		
		/*한 농가회원의 정보를 상세보기*/
		@RequestMapping(value="oneFarmMember", method=RequestMethod.GET)
		public String oneSelectFarmMember(Model model
										,  String fMemberId) {
			LOGGER.info("FarmMemberController oneFarmMember 호출");
			System.out.println("fMemberId===>"+fMemberId);
			model.addAttribute("farmMemberInfo", farmMemberService.oneSelectFarmMember(fMemberId));
			System.out.println("farmMemberInfo =========> : "+farmMemberService.oneSelectFarmMember(fMemberId));
			return "user/farm_member/oneFarmMember";
		}
		
		/*하나의 농가의 농가회원전체리스트 보기*/ 
		@RequestMapping(value="/listFarmMember", method=RequestMethod.GET)
		public String listSelectFarmMember(String fName
										, Model model) {
			LOGGER.info("FarmMemberController listFarmMember 호출");
			farmMemberService.listFarmMember(fName);
			model.addAttribute("farmMemberList",farmMemberService.listFarmMember(fName));
			model.addAttribute("fNumber", fName);
			System.out.println("farmMemberList====> "+farmMemberService.listFarmMember(fName));
			return "user/farm_member/listFarmMember";
		}
		
		/*농가 회원가입 처리 post*/
		@Transactional
		@RequestMapping(value="/addFarmMember", method=RequestMethod.POST)
		public String insertFarmMember(FarmMemberView farmMemberView) {
			LOGGER.info("FarmMemberController 호출");
			LOGGER.info("FarmMemberView 내용 ====> " + farmMemberView.toString());
			int fNumber = farmMemberView.getfNumber();
			if(fNumber == 0) {
				LOGGER.info(" addFarmMember fNumber--> "+fNumber);
				farmService.insertFarm(farmMemberView);
			}
			farmMemberService.insertFarmMember(farmMemberView);
			return "redirect:/";
		}
		
		/*농가 회원가입 폼으로 가기*/
		@RequestMapping(value="/addFarmMember", method=RequestMethod.GET)
		public String insertFarmMember() {
			return "user/farm_member/addFarmMember";
		}
}