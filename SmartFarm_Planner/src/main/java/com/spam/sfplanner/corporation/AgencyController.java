/*나성수*/
package com.spam.sfplanner.corporation;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.user.AgencyMemberRequest;

/*
 * 관리기관 관리 컨트롤러
 */
@Controller
public class AgencyController {

	@Autowired
	private AgencyService agencyService;
	
	/**
	 * 관리기관 수정 처리 컨트롤러
	 * @param 관리기관 수정 화면에서 받아온 데이터
	 * @return 관리기관 상세 화면
	 */
	@RequestMapping(value="/updateAgency",method = RequestMethod.POST)
	public String updateAgency(AgencyMemberRequest agencyMemberRequest) {
		int result = agencyService.updateAgency(agencyMemberRequest);
		/*
		 * url일부가 한글이 들어와야하는데 한글자체가 깨져서 경로에러가 발생한다
		 * 이때 한글부분만 utf-8로 인코딩해주면 되는데
		 * 바로 URLEncoder라는 객체를 이용하면 된다
		 */
		String aName = agencyMemberRequest.getaName();
		try {
			aName = URLEncoder.encode(aName, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		if(result == 0) {
			return "redirect:/updateAgency?aName="+aName;
		}
		return "redirect:/oneAgency?aName="+aName;
	}
	
	/**
	 * 관리기관 수정 화면 출력 컨트롤러
	 * @param 해당 관리기관명
	 * @param model
	 * @return 관리기관 수정화면
	 */
	@RequestMapping(value="/updateAgency",method = RequestMethod.GET)
	public String updateAgency(@RequestParam(value="aName",required=true)String aName,Model model) {
		model.addAttribute("agency", agencyService.updateAgency(aName));
		return "corporation/agency/updateAgency";
	}
	
	/**
	 * 관리기관 삭제 처리 컨트롤러
	 * @param 해당 관리기관넘버
	 * @param 해당 관리기관명
	 * @return 메인화면
	 */
	@RequestMapping(value="deleteAgency",method = RequestMethod.GET)
	public String deleteAgency(@RequestParam(value="aNumber",required=true)int aNumber
								,@RequestParam(value="aName",required=true)String aName) {
		agencyService.deleteAgency(aNumber, aName);
		return "redirect:/logout";
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
