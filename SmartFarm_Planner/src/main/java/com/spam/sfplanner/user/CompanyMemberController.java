/*배건혜*/
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
import com.spam.sfplanner.corporation.CompanyService;

@Controller
public class CompanyMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberController.class);
	
	@Autowired
	private CompanyMemberService companyMemberService;
	@Autowired
	private CompanyService companyService;
	
	
		
		/*업체 회원 삭제 처리 Controller*/
		@RequestMapping(value="/deleteCompanyMember", method=RequestMethod.GET)
		public String deleteCompanyMember(String cMemberId) {
			companyMemberService.deleteCompanyMember(cMemberId);
			return "redirect:/logout";
		}
		
		/*업체 회원 수정 처리 Controller*/
		@RequestMapping(value="/updateCompanyMember", method=RequestMethod.POST)
		public String updateCompanyMember(CompanyMemberView companyMemberView) {
			companyMemberService.updateCompanyMember(companyMemberView);
			return "redirect:/oneCompanyMember?cMemberId="+companyMemberView.getcMemberId();
		}
		
		/*업체 회원 수정 화면 호출 Controller*/
		@RequestMapping(value="/updateCompanyMember", method=RequestMethod.GET)
		public String updateCompanyMember(Model model, String cMemberId) {
			model.addAttribute("updateCompany", companyMemberService.oneSelectCompanyMember(cMemberId));
			return "user/company_member/updateCompanyMember";
		}
		
		/*업체 회원 정보 상세내용 Controller*/ 
		@RequestMapping(value="/oneCompanyMember", method=RequestMethod.GET)
		public String oneSelectCompanyMember(Model model, String cMemberId) {
			model.addAttribute("CompanyMember", companyMemberService.oneSelectCompanyMember(cMemberId));
			return "user/company_member/oneCompanyMember";
		}
		
		/*업체회원 전체 리스트 Controller*/
		@RequestMapping(value="/listCompanyMember", method=RequestMethod.GET)
		public String listSelectCompanyMember(String cName, Model model) {
			Map<String, Object> resultMap = companyMemberService.listSelectCompanyMember(cName);
			model.addAttribute("list", resultMap.get("list"));
			model.addAttribute("cName", cName);
			model.addAttribute("cName", cName);
			return "user/company_member/listCompanyMember";
		}
		
		/*업체 회원가입 처리 Controller*/
		@Transactional
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.POST)
		public String insertCompanyMember(CompanyMemberView companyMemberView) {
			logger.info("CompanyMemberController 호출");
			logger.info("CompanyMemberView 내용" + companyMemberView.toString());
			int cNumber = companyMemberView.getcNumber();
			if(cNumber == 0) {
				companyService.insertCompany(companyMemberView);
			}
			
			companyMemberService.insertCompanyMember(companyMemberView);
			return "redirect:/home";
		}
		
		/*업체 회원가입 화면 호출 Controller*/ 
		@RequestMapping(value="/addCompanyMember", method=RequestMethod.GET)
		public String insertCompanyMember() {
			return "user/company_member/addCompanyMember";
		}
		
}
