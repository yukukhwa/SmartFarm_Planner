/*[김재희]*/
package com.spam.sfplanner.corporation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spam.sfplanner.user.FarmMemberView;

@Service
public class FarmService {
	@Autowired FarmDao farmDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmService.class);

	public void insertFarm(FarmMemberView farmMemberView) {
		LOGGER.info("FarmService 호출");
		LOGGER.info("FarmService farmMemberView ===> "+farmMemberView);
		farmDao.insertFarm(farmMemberView);
		
	}
}
