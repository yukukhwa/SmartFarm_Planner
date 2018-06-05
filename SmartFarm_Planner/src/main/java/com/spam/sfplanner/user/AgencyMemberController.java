/*나성수*/
package com.spam.sfplanner.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
