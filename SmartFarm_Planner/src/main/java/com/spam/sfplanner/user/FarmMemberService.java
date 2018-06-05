/*[김재희]*/
package com.spam.sfplanner.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.corporation.FarmService;

@Service
@Transactional
public class FarmMemberService {
	@Autowired FarmMemberDao farmMemberDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmService.class);
	
	public void insertFarmMember(FarmMemberView farmMemberView) {
		LOGGER.info("FarmMemberService 호출");
		LOGGER.info("FarmMemberService farmMemberView ===>"+farmMemberView);
		farmMemberDao.insertFarmMember(farmMemberView);
	}
}
