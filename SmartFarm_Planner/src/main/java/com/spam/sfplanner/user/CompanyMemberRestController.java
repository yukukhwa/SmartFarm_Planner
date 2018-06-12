/*배건혜*/
package com.spam.sfplanner.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CompanyMemberRestController {
	@Autowired
	private CompanyMemberService companyMemberService;
	
	@RequestMapping(value="/checkIdCompnayMember",method = RequestMethod.POST)
	public String checkId(String cMemberId) {
		if(companyMemberService.checkId(cMemberId) == null) {
			System.out.println(cMemberId+"이 아이디는 사용 가능 합니다.");
			return "true";
		}
		System.out.println(cMemberId+"이 아이디는 이미 사용 중 입니다.");
		return "false";
	}
	

}
