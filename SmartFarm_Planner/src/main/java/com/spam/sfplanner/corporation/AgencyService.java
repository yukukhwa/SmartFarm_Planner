/*나성수*/
package com.spam.sfplanner.corporation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.AgencyMemberView;
/*
 * 관리기관 서비스
 */
@Transactional
@Service
public class AgencyService {
	
	@Autowired
	private AgencyDao agencyDao;
	
	public void InsertAgency(AgencyMemberView agencyMemberView) {
		agencyDao.InsertAgency(agencyMemberView);
	}
}
