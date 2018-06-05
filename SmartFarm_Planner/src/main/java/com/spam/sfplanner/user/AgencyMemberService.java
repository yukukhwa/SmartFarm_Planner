/*나성수*/
package com.spam.sfplanner.user;

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
	
	public String IdCheck(String aMemberId) {
		return agencyMemberDao.IdCheck(aMemberId);
	}
	
	/**
	 * 관리기관 회원가입화면 처리서비스
	 * @param agencyMemberView
	 */
	public void InsertAgencyMember(AgencyMemberView agencyMemberView) {
		agencyMemberDao.InsertAgencyMember(agencyMemberView);
	}
}
