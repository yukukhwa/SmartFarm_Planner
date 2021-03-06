package com.spam.sfplanner;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping(value="/compare",method = RequestMethod.GET)
	public String compare(@RequestParam(value="number") int number,@RequestParam(value="ppNumber") int ppNumber,Model model) {
		String resultReturn = null;
		switch (number) {
		case 1:
			model.addAttribute("resultList", homeService.compare1(ppNumber));
			resultReturn = "/compare/compare1";
			break;
		default:
			resultReturn = "/home";
			break;
		}
		return resultReturn;
	}
	
	/**
	 * 주소(팝업) api GET
	 * @return 주소팝업 뷰로 포워드
	 */
	@RequestMapping(value = "/jusoPopup", method = RequestMethod.GET)
	public String jusoPopup() {
		return "jusoAPI/jusoPopup";
	}
	
	/**
	 * 주소(팝업) api POST
	 * @param model
	 * @return 팝업창에서 부모창(주소입력창)으로 리턴하며 포워드
	 */	
	@RequestMapping(value = "/jusoPopup", method = RequestMethod.POST)
	public String jusoPopup(Model model) {
		return "jusoAPI/jusoPopup";
	}
	
	/**
	 * 농사로 api GET
	 * @param number
	 * @return 과수, 축산, 식용작물, 특용작물 분류에 따라 각각의 뷰로 포워드
	 */
	@RequestMapping(value = "/nongsaroApi", method = RequestMethod.GET)
	public String nongsaroApi(@RequestParam(value="number") int number) {
		if(number == 1) {
			return "nongsaroAPI/nongAPI1";
		} else if(number == 2) {
			return "nongsaroAPI/nongAPI2";
		} else if(number == 3) {
			return "nongsaroAPI/nongAPI3";			
		} else if(number == 4) {
			return "nongsaroAPI/nongAPI4";			
		} else if(number == 5){
			return "nongsaroAPI/nongAPI5";
		} else {
			return "home";
		}		
	}
	
	/**
	 * 포트폴리오 GET
	 * @return 포트폴리오 뷰로 포워드
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String portfolio() {
		return "portfolio";
	}
	
	/**
	 * SmartFarm_Planner의 메인화면
	 * @return home으로 포워드
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {				
		return "home";
	}
	
}
