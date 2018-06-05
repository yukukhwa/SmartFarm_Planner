// [유국화]
package com.spam.sfplanner.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FindService {
	@Autowired private FindDao findDao;
	private static final Logger LOGGER = LoggerFactory.getLogger(FindController.class);
	
	// 이름, 이메일, 아이디, 농가명으로 비번 찾기
	public String oneSelectFindPw(FindDb finddb) {
		LOGGER.info("아이디 찾기 서비스");
		// Corporation 분기문
		if(finddb.getCorp().equals("농가")) {
			return findDao.oneSelectFindFarmPw(finddb);
		} else if(finddb.getCorp().equals("업체")) {
			return findDao.oneSelectFindCompanyPw(finddb);
		} else {
			return findDao.oneSelectFindAgencyPw(finddb);
		}		
	}
	
	// 이름, 이메일로 아이디 찾기
	public String oneSelectFindId(FindDb finddb) {
		LOGGER.info("아이디 찾기 서비스");
		// Corporation 분기문
		if(finddb.getCorp().equals("농가")) {
			return findDao.oneSelectFindFarmId(finddb);
		} else if(finddb.getCorp().equals("업체")) {
			return findDao.oneSelectFindCompanyId(finddb);
		} else {
			return findDao.oneSelectFindAgencyId(finddb);
		}		
	}
}
