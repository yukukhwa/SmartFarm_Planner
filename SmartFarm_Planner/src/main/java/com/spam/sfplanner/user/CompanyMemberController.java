package com.spam.sfplanner.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CompanyMemberController {
	@Autowired 
	private CompanyMemberService companyMemberService;
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberController.class);
	
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.POST)
		public String insertcompanyMember(CompanyMemberDB companyMemberDB) {
			companyMemberService.insertCompanyMember(companyMemberDB);
			return "redirect:/";
		}
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.GET)
		public String insertcompanyMember() {
			return "user/company_member/addCompanyMember";
		}
}
