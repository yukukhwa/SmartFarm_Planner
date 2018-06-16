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

import com.spam.sfplanner.login.Login;

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
		Login login = (Login) session.getAttribute("loginMember");
		model.addAttribute("actResultList", actResultService.listSelectActResult(login.getCorpNumber()));
		return "actresult/askActResultList";
	}
	/*
	 * 실행결과리스트 상세보기 보여주는 화면 매핑
	 */
	@RequestMapping(value="/oneSelectActResult", method = RequestMethod.GET)
	public String oneSelectActResult (Model model
			, @RequestParam(value="ppResultlistNumber") int ppResultlistNumber) {
		model.addAttribute("map", actResultService.oneSelectActResult(ppResultlistNumber));
		return "actresult/oneActResultList";
	}
	/*
	 * 실행결과리스트 전체 보여주는 화면 매핑
	 * 실행결과리스트 전체를 보여주기 위해서 조건절을 안넣기 위해 0을 매개변수로 하여 실행결과 리스트를 호출한 후 model에 셋팅하였다.
	 * 그리고 askActResultList.jsp로 포워드하였다.
	 */
	@RequestMapping(value="/listSelectActResult", method = RequestMethod.GET)
	public String listSelectActResult (Model model) {
		model.addAttribute("actResultList", actResultService.listSelectActResult(0));
		return "actresult/askActResultList";
	}
	/*
	 * 실행결과 등록 전 계획서 선택 화면 매핑
	 * 세션에 있는 자신의 농가넘버를 사용하여 리스트를 모델에 셋팅하였다.
	 * 그리고 choicePlanner.jsp로 포워드하였다.
	 */
	@RequestMapping(value="/choicePlanner", method = RequestMethod.GET)
	public String choicePlanner (HttpSession session, Model model) {
		Login login = (Login) session.getAttribute("loginMember");
		model.addAttribute("plannerList", actResultService.listSelectPlan(login.getCorpNumber()));
		return "actresult/choicePlanner";
	}
	
	/*
	 * 실행결과리스트 등록화면에서 리스트가는 매핑
	 */
	@RequestMapping(value="/oneSelectActResult", method = RequestMethod.POST)
	public String oneSelectActResult (ActResult actResult) {
		
		return "redirect:/addActResultList";
	}
	
	@RequestMapping(value="/insertActResult", method = RequestMethod.POST)
	public String insertActResult (ActResult actResult, WrHumanPay wrHumanPay) {
		actResultService.insertActResult(actResult, wrHumanPay);
		return "redirect:/home";
	}
	/*
	 * 실행결과리스트 등록화면으로 가는 매핑
	 */
	@RequestMapping(value="/insertActResult", method = RequestMethod.GET)
	public String insertActResult (Model model
			, @RequestParam(value="ppNumber") int ppNumber) {
		model.addAttribute("humanPayList", actResultService.listSelectWoHumanPay());
		model.addAttribute("ppNumber", ppNumber);
		return "actresult/addActResultList";
	}
}
