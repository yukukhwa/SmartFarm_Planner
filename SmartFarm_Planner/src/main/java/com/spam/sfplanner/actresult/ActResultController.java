/*[김기성]*/
package com.spam.sfplanner.actresult;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.login.LoginDb;

@Controller
public class ActResultController {
	
	@Autowired
	private ActResultService actResultService;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultController.class);
	
	@RequestMapping(value="/choicePlanner", method = RequestMethod.GET)
	public String choicePlanner (HttpSession session, Model model) {
		LoginDb loginDb = (LoginDb) session.getAttribute("loginMember");
		model.addAttribute("plannerList", loginDb.getCorpNumber());
		return "actresult/choicePlanner";
	}
	
	@RequestMapping(value="/insertActResult", method = RequestMethod.GET)
	public String insertActResult (Model model) {
		model.addAttribute("humanPayList", actResultService.listSelectWoHumanPay());
		return "actresult/addActResultList";
	}
}
