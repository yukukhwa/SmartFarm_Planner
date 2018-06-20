/*나성수*/
package com.spam.sfplanner.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/*
 * 관리기관회원관리 ajax 컨트롤러
 */
@RestController
public class AgencyMemberRestController {
	
	@Autowired
	private AgencyMemberService agencyMemberService;
	
	@RequestMapping(value="/agencyMemberIdCheck",method = RequestMethod.POST)
	public String IdCheck(@RequestParam(value="aMemberId")String aMemberId) {
		return agencyMemberService.idCheck(aMemberId);
	}
}
