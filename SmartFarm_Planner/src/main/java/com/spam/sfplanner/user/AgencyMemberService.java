/*나성수*/
package com.spam.sfplanner.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.corporation.AgencyDao;

/*
 * 관리기관 회원 서비스
 */
@Transactional
@Service
public class AgencyMemberService {
	
	@Autowired
	private AgencyMemberDao agencyMemberDao;
	
	@Autowired
	private AgencyDao agencyDao;
	
	/**
	 * 관리기관 회원 정보 수정 처리 서비스
	 * @param 관리기관 회원 정보 수정화면에서 받아온 데이터
	 */
	public void updateAgencyMember(AgencyMemberRequest agencyMemberRequest) {
		agencyMemberDao.updateAgencyMember(agencyMemberRequest);
	}
	
	/**
	 * 관리기관 회원 한명 탈퇴 처리 서비스
	 * @param 해당 회원 아이디
	 * @param 해당 관리기관명
	 * @return 탈퇴 처리결과
	 */
	public int deleteAgencyMember(String aMemberId,String aName) {
		if(agencyDao.oneSelectAgency(aName).getAgencyMemberDb().getaMemberId().equals(aMemberId)) {
			return 0;// 대표자로 등록된 회원은 기관정보에서 대표자정보가 변경되지않는한 탈퇴처리될수 없다
		}
		agencyMemberDao.deleteAgencyMember(aMemberId);
		return 1;// 대표자를 제외한 직원들은 탈퇴처리가 가능하다
	}
	
	/**
	 * 관리기관 회원 한명의 상세내용 출력 서비스
	 * @param 해당 회원 아이디
	 * @param 해당 관리기관명
	 * @return 상세조회결과(직급,회원상세정보)
	 */
	public Map<String, Object> oneSelectAgencyMember(String aMemberId,String aName) {
		Map<String, Object> map = new HashMap<String, Object>();
		String level = "직원";
		if(agencyDao.oneSelectAgency(aName).getAgencyMemberDb().getaMemberId().equals(aMemberId)) {
			level = "대표";
		}
		map.put("level", level);
		map.put("agencyMember", agencyMemberDao.oneSelectAgencyMember(aMemberId));
		return map;
	}
	
	/**
	 * 해당 관리기관의 직원 리스트 출력 서비스
	 * @param 해당 관리기관명
	 * @return 해당 관리기관 직원 리스트
	 */
	public Map<String,Object> listSelectAgencyMember(String aName) {
		Map<String,Object> map = new HashMap<String, Object>();
		/*
		 * 해당 관리기관의 직원리스트 출력
		 * 해당 관리기관의 대표자 아이디 출력
		 */
		map.put("list", agencyMemberDao.listSelectAgencyMember(aName));
		map.put("bossId", agencyDao.oneSelectAgency(aName).getAgencyMemberDb().getaMemberId());
		return map;
	}
	
	/**
	 * 관리기관 회원가입시 아이디 중복체크 처리 서비스
	 * @param aMemberId
	 * @return
	 */
	public String idCheck(String aMemberId) {
		String result = agencyMemberDao.idCheck(aMemberId);
		if(result == null) {
			System.out.println(aMemberId+"아이디는 사용가능합니다");
			return "T";//아이디 사용가능
		}
		System.out.println(aMemberId+"아이디는 사용불가능합니다");
		return "F";//아이디 사용불가능
	}
	
	/**
	 * 관리기관 회원가입화면 처리서비스
	 * @param agencyMemberRequest
	 */
	public void insertAgencyMember(AgencyMemberRequest agencyMemberRequest) {
		agencyMemberDao.insertAgencyMember(agencyMemberRequest);
	}
}
