/*[김재희]*/
package com.spam.sfplanner.user;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FarmMemberRestController {
	@Autowired FarmMemberService farmMemberService;
	
	@RequestMapping(value="/farmIdCheck", method=RequestMethod.POST)
	public Map<Object, Object> idCheck(@RequestBody String fMemberId) {	
		Map<Object, Object> map = farmMemberService.idCheck(fMemberId);
		return map;
	}
	
}
