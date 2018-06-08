/*배건혜*/
package com.spam.sfplanner.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.corporation.CompanyService;

@Controller
public class CompanyMemberController {
	@Autowired 
	private CompanyMemberService companyMemberService;
	private CompanyService companyService;
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberController.class);
		
		@RequestMapping(value="/listCompanyMember", method=RequestMethod.GET)
		public String listSelectCompanyMember(@RequestParam(value="cMemberName",required=true)String cMemberName, Model model) {
			model.addAttribute("list", companyMemberService.listSelectCompanyMember(cMemberName));
			model.addAttribute("cMemberName", cMemberName);
			return "user/company_member/listCompanyMember";
		}
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.GET)
		public String insertcompanyMember() {
			return "user/company_member/addCompanyMember";
		}
		@Transactional
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.POST)
		public String insertcompanyMember(CompanyMemberView companyMemberView) {
			logger.info("CompanyMemberController 호출");
			int cNumber = companyMemberView.getcNumber();
			if(cNumber == 0) {
				companyService.insertCompany(companyMemberView);
			}
			companyMemberService.insertCompanyMember(companyMemberView);
			return "redirect:/";
		}
		
}
