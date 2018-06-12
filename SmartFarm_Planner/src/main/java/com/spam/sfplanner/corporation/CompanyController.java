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
	
	/*업체 삭제처리 Controller*/
	@RequestMapping(value="/deleteCompany" , method = RequestMethod.GET)
	public String deleteCompany(int cNumber, String cName) {
		companyService.deleteCompany(cNumber, cName);
		return "redirect:/logout";
	}
	
	/*업체 수정처리 Controller*/
	@RequestMapping(value="/updateCompany" , method = RequestMethod.POST)
	public String updateCompany(CompanyMemberView companyMemberView) {
		int result = companyService.updateCompany(companyMemberView);
		String cName  = companyMemberView.getcName();
		if(result == 0) {
			return "redirect:/updateCompany?cName="+cName;
		}
		return "redirect:/oneCompany?cName"+cName;
	}
	
	/*업체 수정화면 출력  Controller*/
	@RequestMapping(value="/updateCompany" , method = RequestMethod.GET)
	public String updateCompany(String cName, Model model) {
		model.addAttribute("company", companyService.updateCompany(cName));
		return "corporation/company/updateCompany";
	}
	
	/*업체 상세내용 출력 Controller*/
	@RequestMapping(value="/oneCompany" , method = RequestMethod.GET)
	public String oneSelectCompany(String cName,Model model) {
		model.addAttribute("companyDb", companyService.oneSelectCompany(cName));
		return "corporation/company/oneCompany";
	}
	
	/*업체 리스트 출력 Controller*/
	@RequestMapping(value="/listCompany" , method = RequestMethod.GET)
	public String listSelectCompany(Model model) {
		model.addAttribute("list", companyService.listSelectCompany());
		return "corporation/company/listCompany";
		
	}
}