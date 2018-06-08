/*배건혜*/
package com.spam.sfplanner.corporation;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.user.CompanyMemberView;

@Controller
public class CompanyController {
	@Autowired 
	private CompanyService companyService;
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
	
	@RequestMapping(value="/oneCompany" , method = RequestMethod.GET)
	public String oneSelectCompany(@RequestParam(value="cName",required=true)String cName,Model model) {
		model.addAttribute("companyDb", companyService.oneSelectCompany(cName));
		return "corporation/company/oneCompany";
	}
	
	@RequestMapping(value="/listCompany" , method = RequestMethod.POST)
	public String listSelectCompany(@RequestParam(value="cName",required=false)String cName,Model model) {
		model.addAttribute("list", companyService.listSelectCompany(cName));
		return "corporation/company/listCompany";
	}
	
	@RequestMapping(value="/listCompany" , method = RequestMethod.GET)
	public String listSelectCompany(Model model) {
		List<String> list = companyService.listSelectCompany();
		model.addAttribute("list", list);
		return "corporation/company/listCompany";
		
	}
}