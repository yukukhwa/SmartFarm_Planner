/*[김기성]*/
package com.spam.sfplanner.login;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String loginFarm(HttpSession session) {
		
		session.removeAttribute("loginMemberId");
		return "redirect:/";
	}
	/*
	 * loginFarm 매핑
	 * : get방식은 loginFarm.jsp로 이동
	 * post방식은 loginDb를 매개변수로 받아 id, pw가 일치하면 session에 정보를 저장하고 home화면으로 redirect한다.
	 */
	@RequestMapping(value = "/loginFarm", method = RequestMethod.GET)
	public String loginFarm() {
		
		return "/login/loginFarm";
	}
	@RequestMapping(value = "/loginFarm", method = RequestMethod.POST)
	public String loginFarm(LoginDb loginDb, HttpSession session) {
		LoginDb returnLogin = loginService.oneSelectFarmMember(loginDb);
		if(returnLogin == null) {
			return "/login/loginFarm";
		}
		session.setAttribute("loginMemberId", loginDb.getId());
		return "redirect:/";
	}
}
