/*나성수*/
package com.spam.sfplanner.user;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.corporation.AgencyService;

/*
 * 관리기관 회원 컨트롤러
 */
@Controller
public class AgencyMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(AgencyMemberController.class);
	
	@Autowired
	private AgencyMemberService agencyMemberService;
	
	@Autowired
	private AgencyService agencyService;
	
	/**
	 * 관리기관 회원 정보 수정 처리 컨트롤러
	 * @param 회원 정보 수정 화면에서 받아온 데이터
	 * @return 회원 상세내용 화면 요청
	 */
	@RequestMapping(value="/updateAgencyMember",method = RequestMethod.POST)
	public String updateAgencyMember(AgencyMemberRequest agencyMemberRequest) {
		agencyMemberService.updateAgencyMember(agencyMemberRequest);
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
		return "redirect:/oneAgencyMember?aMemberId="+agencyMemberRequest.getaMemberId()+"&aName="+aName;
	}
	
	/**
	 * 관리기관 회원 정보 수정화면 출력 컨트롤럭
	 * @param 요청 회원 아이디
	 * @param 요청 회원 관리기관명
	 * @param model
	 * @return 회원 정보수정 화면
	 */
	@RequestMapping(value="/updateAgencyMember",method = RequestMethod.GET)
	public String updateAgencyMember(@RequestParam(value="aMemberId",required=true)String aMemberId
									,@RequestParam(value="aName",required=true)String aName,Model model) {
		Map<String, Object> map = agencyMemberService.oneSelectAgencyMember(aMemberId, aName);
		model.addAttribute("level", map.get("level"));
		model.addAttribute("agencyMember",map.get("agencyMember"));
		return "user/agency_member/updateAgencyMember";
	}
	
	/**
	 * 관리기관 한명의 회원 탈퇴 처리 컨트롤러
	 * @param 해당 회원아이디
	 * @return 로그아웃 처리 요청주소
	 */
	@RequestMapping(value="/deleteAgencyMember",method = RequestMethod.GET)
	public String deleteAgencyMember(@RequestParam(value="aMemberId",required=true)String aMemberId
									,@RequestParam(value="aName",required=true)String aName,Model model) {
		int result = agencyMemberService.deleteAgencyMember(aMemberId, aName);
		if(result == 0) {// 대표는 탈퇴되면 않된다
			return "redirect:/oneAgencyMember?aMemberId="+aMemberId+"&aName="+aName;
		}
		return "redirect:/logout";
	}
	
	/**
	 * 관리기관 한명의 회원 상세정보 출력 컨트롤러
	 * @param 해당 회원 아이디
	 * @param model
	 * @return 회원 상세정보 화면
	 */
	@RequestMapping(value="/oneAgencyMember",method = RequestMethod.GET)
	public String oneSelectAgencyMember(@RequestParam(value="aMemberId",required=true)String aMemberId
										,@RequestParam(value="aName",required=true)String aName,Model model) {
		Map<String, Object> map = agencyMemberService.oneSelectAgencyMember(aMemberId, aName);
		model.addAttribute("level", map.get("level"));
		model.addAttribute("agencyMember",map.get("agencyMember"));
		return "user/agency_member/oneAgencyMember";
	}
	
	/**
	 * 해당 관리기관의 직원 리스트 출력 컨트롤러
	 * @param 해당 관리기관명
	 * @param model
	 * @return 해당 관리기관의 직원리스트
	 */
	@RequestMapping(value="/listAgencyMember",method = RequestMethod.GET)
	public String listSelectAgencyMember(@RequestParam(value="aName",required=true)String aName,Model model) {
		Map<String, Object> resultMap = agencyMemberService.listSelectAgencyMember(aName);
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("bossId", resultMap.get("bossId"));
		model.addAttribute("aName", aName);
		return "user/agency_member/listAgencyMember";
	}
	
	/**
	 * 관리기관 회원가입화면 호출컨트롤러
	 * @return 관리기관 회원가입화면
	 */
	@RequestMapping(value="/addAgencyMember",method = RequestMethod.GET)
	public String InsertAgencyMember() {
		return "user/agency_member/addAgencyMember";
	}
	
	/**
	 * 관리기관 회원가입화면 처리컨트롤러
	 * @param agencyMemberRequest
	 * @return
	 */
	@Transactional
	@RequestMapping(value="/addAgencyMember",method = RequestMethod.POST)
	public String InsertAgencyMember(AgencyMemberRequest agencyMemberRequest) {
		System.out.println(agencyMemberRequest.toString());
		int aNumber = agencyMemberRequest.getaNumber();
		if(aNumber == 0) {
			System.out.println(aNumber);
			agencyService.insertAgency(agencyMemberRequest);
		}
		System.out.println(aNumber);
		agencyMemberService.insertAgencyMember(agencyMemberRequest);
		return "redirect:/home";
	}
}
