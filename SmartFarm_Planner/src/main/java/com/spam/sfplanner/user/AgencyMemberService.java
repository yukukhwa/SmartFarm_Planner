/*나성수*/
package com.spam.sfplanner.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 * 관리기관 회원 서비스
 */
@Transactional
@Service
public class AgencyMemberService {
	
	@Autowired
	private AgencyMemberDao agencyMemberDao;
	
	/**
	 * 해당 관리기관의 직원 리스트 출력 서비스
	 * @param 해당 관리기관명
	 * @return 해당 관리기관 직원 리스트
	 */
	public List<AgencyMemberDb> listSelectAgencyMember(String aName) {
		return agencyMemberDao.listSelectAgencyMember(aName);
	}
	
	/**
	 * 관리기관 회원가입시 아이디 중복체크 처리 서비스
	 * @param aMemberId
	 * @return
	 */
	public String idCheck(String aMemberId) {
		return agencyMemberDao.idCheck(aMemberId);
	}
	
	/**
	 * 관리기관 회원가입화면 처리서비스
	 * @param agencyMemberView
	 */
	public void insertAgencyMember(AgencyMemberView agencyMemberView) {
		agencyMemberDao.insertAgencyMember(agencyMemberView);
	}
}
