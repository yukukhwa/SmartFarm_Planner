// [유국화]
package com.spam.sfplanner.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class FindController {
	@Autowired private FindService findservice;
	private static final Logger LOGGER = LoggerFactory.getLogger(FindController.class);
	
	// 회원 비번찾기 GET
	@RequestMapping(value="/findPw", method=RequestMethod.GET)
	public String findFarmPw() {
		LOGGER.info("비번 찾기 화면으로 포워드");
		return "login/findPw";
	}
	
	// 회원 비번찾기 POST
	@RequestMapping(value="/findPw", method=RequestMethod.POST)
	public String findFarmPw(Find finddb, Model model) {
		LOGGER.info("비번 찾기 화면에서 포스트로 보냄");
		System.out.println("입력받은 정보: "+finddb);
		// 서비스에서 셀렉트 호출		
		String resultpw = findservice.oneSelectFindPw(finddb);		
		System.out.println("resultpw : " + resultpw);

		if(resultpw != null) {
			// 정보 일치하면 비번찾기결과화면으로 포워드
			model.addAttribute("resultpw", resultpw);
			return "login/resultPw";
		} else {
			// 정보 불일치하면 비번찾기화면으로 포워드
			LOGGER.debug("입력하신 정보와 일치하는 비밀번호가 없습니다.");
			return "login/findPw";
		}
	}
	
	// 농가회원 아이디찾기 GET
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public String findFarmId() {
		LOGGER.info("아이디 찾기 화면으로 포워드");
		return "login/findId";
	}
	
	// 회원 아이디찾기 POST
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public String findFarmId(Find finddb, Model model) {
		LOGGER.info("아이디 찾기 화면에서 포스트로 보냄");		
		System.out.println("입력받은 정보: "+finddb);
		// 서비스에서 셀렉트 호출
		String resultid = findservice.oneSelectFindId(finddb);
		System.out.println("resultid : " + resultid);				
		if(resultid != null) {
			// 정보 일치하면 아이디찾기결과화면으로 포워드
			model.addAttribute("resultid", resultid);
			return "login/resultId";
		} else {
			// 정보 불일치하면 아이디찾기화면으로 포워드
			LOGGER.debug("입력하신 정보와 일치하는 아이디가 없습니다.");
			return "login/findId";
		}		
	}
}
