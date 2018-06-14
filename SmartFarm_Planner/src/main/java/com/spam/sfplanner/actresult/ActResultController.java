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
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.login.LoginDb;

@Controller
public class ActResultController {
	
	@Autowired
	private ActResultService actResultService;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultController.class);
	
	/*
	 * 자신의 농가 실행결과 리스트를 보여주는 화면 매핑
	 */
	@RequestMapping(value="/listSelectMyActResult", method = RequestMethod.GET)
	public String listSelectMyActResult (Model model, HttpSession session) {
		LoginDb loginDb = (LoginDb) session.getAttribute("loginMember");
		model.addAttribute("actResultList", actResultService.listSelectActResult(loginDb.getCorpNumber()));
		return "actresult/askActResultList";
	}
	/*
	 * 실행결과리스트 상세보기 보여주는 화면 매핑
	 */
	@RequestMapping(value="/oneSelectActResult", method = RequestMethod.GET)
	public String oneSelectActResult () {
		return "actresult/oneActResultList";
	}
	/*
	 * 실행결과리스트 전체 보여주는 화면 매핑
	 */
	@RequestMapping(value="/listSelectActResult", method = RequestMethod.GET)
	public String listSelectActResult (Model model) {
		model.addAttribute("actResultList", actResultService.listSelectActResult(0));
		return "actresult/askActResultList";
	}
	/*
	 * 실행결과 등록 전 계획서 선택 화면 매핑
	 */
	@RequestMapping(value="/choicePlanner", method = RequestMethod.GET)
	public String choicePlanner (HttpSession session, Model model) {
		LoginDb loginDb = (LoginDb) session.getAttribute("loginMember");
		model.addAttribute("plannerList", actResultService.listSelectPlan(loginDb.getCorpNumber()));
		return "actresult/choicePlanner";
	}
	
	/*
	 * 실행결과리스트 등록화면에서 리스트가는 매핑
	 */
	@RequestMapping(value="/oneSelectActResult", method = RequestMethod.POST)
	public String insertActResult () {		
		return "redirect:/addActResultList";
	}
	/*
	 * 실행결과리스트 등록화면으로 가는 매핑
	 */
	@RequestMapping(value="/insertActResult", method = RequestMethod.GET)
	public String insertActResult (Model model) {
		model.addAttribute("humanPayList", actResultService.listSelectWoHumanPay());
		return "actresult/addActResultList";
	}
}
