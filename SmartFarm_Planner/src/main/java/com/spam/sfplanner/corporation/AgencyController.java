/*나성수*/
package com.spam.sfplanner.corporation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*
 * 관리기관 관리 컨트롤러
 */
@Controller
public class AgencyController {

	@Autowired
	private AgencyService agencyService;
	
	@RequestMapping(value="deleteAgency",method = RequestMethod.GET)
	public String deleteAgency(@RequestParam(value="aNumber",required=true)int aNumber
								,@RequestParam(value="aName",required=true)String aName) {
		agencyService.deleteAgency(aNumber, aName);
		return "redirect:/";
	}
	
	/**
	 * 선택된 관리기관명에 해당하는 상세 내용 출력 컨트롤러
	 * @param 선택한 관리기관명
	 * @param model
	 * @return 해당 관리기관의 상세내용
	 */
	@RequestMapping(value="/oneAgency",method = RequestMethod.GET)
	public String oneSelectAgency(@RequestParam(value="aName",required=true)String aName,Model model) {
		model.addAttribute("agencyDb", agencyService.oneSelectAgency(aName));
		return "corporation/agency/oneAgency";
	}
	
	/**
	 * 검색한 관리기관 리스트
	 * @param 검색한 관리기관명
	 * @param model
	 * @return 검색결과관리기관리스트
	 */
	@RequestMapping(value="/listAgency",method = RequestMethod.POST)
	public String listSelectAgency(@RequestParam(value="aName",required=false)String aName,Model model) {
		model.addAttribute("list", agencyService.listSelectAgency(aName));
		return "corporation/agency/listAgency";
	}
	
	/**
	 * 관리기관 리스트출력 컨트롤러
	 * @param model
	 * @return 등록된 모든 관리기관 리스트
	 */
	@RequestMapping(value="/listAgency",method = RequestMethod.GET)
	public String listSelectAgency(Model model) {
		model.addAttribute("list", agencyService.listSelectAgency());
		return "corporation/agency/listAgency";
	}
}
