/*배건혜*/
package com.spam.sfplanner.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.corporation.CompanyService;

@Controller
public class CompanyMemberController {
	@Autowired 
	private CompanyMemberService companyMemberService;
	private CompanyService companyService;
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberController.class);
		@Transactional
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.POST)
		public String insertcompanyMember(CompanyMemberView companyMemberView) {
			logger.info("CompanyMemberController 호출");
			companyService.insertCompany(companyMemberView);
			companyMemberService.insertCompanyMember(companyMemberView);
			return "redirect:/listCompanyMember";
		}
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.GET)
		public String insertcompanyMember() {
			return "user/company_member/addCompanyMember";
		}
}
