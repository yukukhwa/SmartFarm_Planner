/*나성수*/
package com.spam.sfplanner.user;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.corporation.AgencyService;

/*
 * 관리기관 회원 컨트롤러
 */
@Controller
public class AgencyMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(AgencyMemberController.class);
	
	@Autowired
	private AgencyMemberService agencyMemberService;
	
	@Autowired
	private AgencyService agencyService;
	
	/**
	 * 관리기관 한명의 회원 탈퇴 처리 컨트롤러
	 * @param 해당 회원아이디
	 * @return 로그아웃 처리 요청주소
	 */
	@RequestMapping(value="/deleteAgencyMember")
	public String deleteAgencyMember(@RequestParam(value="aMemberId",required=true)String aMemberId
									,@RequestParam(value="aName",required=true)String aName,Model model) {
		int result = agencyMemberService.deleteAgencyMember(aMemberId, aName);
		if(result == 0) {// 대표는 탈퇴되면 않된다
			return "redirect:/oneAgencyMember?aMemberId="+aMemberId;
		}
		return "redirect:/logout";
	}
	
	/**
	 * 관리기관 한명의 회원 상세정보 출력 컨트롤러
	 * @param 해당 회원 아이디
	 * @param model
	 * @return 회원 상세정보 화면
	 */
	@RequestMapping(value="/oneAgencyMember",method = RequestMethod.GET)
	public String oneSelectAgencyMember(@RequestParam(value="aMemberId",required=true)String aMemberId
										,@RequestParam(value="aName",required=true)String aName,Model model) {
		Map<String, Object> map = agencyMemberService.oneSelectAgencyMember(aMemberId, aName);
		model.addAttribute("level", map.get("level"));
		model.addAttribute("agencyMember",map.get("agencyMember"));
		return "user/agency_member/oneAgencyMember";
	}
	
	/**
	 * 해당 관리기관의 직원 리스트 출력 컨트롤러
	 * @param 해당 관리기관명
	 * @param model
	 * @return 해당 관리기관의 직원리스트
	 */
	@RequestMapping(value="/listAgencyMember",method = RequestMethod.GET)
	public String listSelectAgencyMember(@RequestParam(value="aName",required=true)String aName,Model model) {
		model.addAttribute("list", agencyMemberService.listSelectAgencyMember(aName));
		model.addAttribute("aName", aName);
		return "user/agency_member/listAgencyMember";
	}
	
	/**
	 * 관리기관 회원가입화면 호출컨트롤러
	 * @return 관리기관 회원가입화면
	 */
	@RequestMapping(value="/addAgencyMember",method = RequestMethod.GET)
	public String InsertAgencyMember() {
		return "user/agency_member/addAgencyMember";
	}
	
	/**
	 * 관리기관 회원가입화면 처리컨트롤러
	 * @param agencyMemberView
	 * @return
	 */
	@Transactional
	@RequestMapping(value="/addAgencyMember",method = RequestMethod.POST)
	public String InsertAgencyMember(AgencyMemberView agencyMemberView) {
		System.out.println(agencyMemberView.toString());
		int aNumber = agencyMemberView.getaNumber();
		if(aNumber == 0) {
			System.out.println(aNumber);
			agencyService.insertAgency(agencyMemberView);
		}
		System.out.println(aNumber);
		agencyMemberService.insertAgencyMember(agencyMemberView);
		return "redirect:/";
	}
}
