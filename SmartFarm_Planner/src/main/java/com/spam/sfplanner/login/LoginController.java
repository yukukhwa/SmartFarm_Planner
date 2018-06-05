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
	
	/*
	 * 로그아웃 매핑
	 * session에 있는 loginMember를 삭제한다.
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("loginMember");
		return "redirect:/";
	}
	/*
	 * loginFarm 매핑
	 * : get방식은 login.jsp로 이동
	 * post방식은 loginDb를 매개변수로 받아 id, pw가 일치하면 session에 정보를 저장하고 home화면으로 redirect한다.
	 * farm, company, agency로 로그인하는 것에 따라 매핑이 나누어 진다.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginFarm() {
		
		return "/login/login";
	}
	@RequestMapping(value = "/loginFarm", method = RequestMethod.POST)
	public String loginFarm(LoginDb loginDb, HttpSession session) {
		LoginDb returnLogin = loginService.oneSelectFarmMember(loginDb);
		if(returnLogin == null) {
			return "/login/login";
		}
		session.setAttribute("loginMember", returnLogin);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/loginCompany", method = RequestMethod.POST)
	public String loginCompany(LoginDb loginDb, HttpSession session) {
		LoginDb returnLogin = loginService.oneSelectCompanyMember(loginDb);
		if(returnLogin == null) {
			return "/login/login";
		}
		session.setAttribute("loginMember", returnLogin);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/loginAgency", method = RequestMethod.POST)
	public String loginAgency(LoginDb loginDb, HttpSession session) {
		LoginDb returnLogin = loginService.oneSelectAgencyMember(loginDb);
		if(returnLogin == null) {
			return "/login/login";
		}
		session.setAttribute("loginMember", returnLogin);
		return "redirect:/";
	}
}
