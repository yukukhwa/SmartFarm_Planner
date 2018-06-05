/*배건혜*/
package com.spam.sfplanner.corporation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.user.CompanyMemberView;

@Controller
public class CompanyController {
	@Autowired 
	private CompanyService companyService;
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
	
	@RequestMapping(value="/addCompany" , method = RequestMethod.POST)
	public String insertCompany(CompanyMemberView companyMemberView) {
		companyService.insertCompany(companyMemberView);
		return "redirect:/";
		
	}
	@RequestMapping(value="/addCompany" , method = RequestMethod.GET)
	public String insertCompany() {		
		return "corporation/company/addCompany";
	}
}