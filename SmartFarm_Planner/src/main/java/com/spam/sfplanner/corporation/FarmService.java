/*[김재희]*/
package com.spam.sfplanner.corporation;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.FarmMemberRequest;

@Service
@Transactional
public class FarmService {
	@Autowired FarmDao farmDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmService.class);
	
	public List<Farm> searchlistSelectFarm(String fName) {
		return farmDao.searchlistSelectFarm(fName);
	}
	
	public Farm oneSelectFarm(String fName) {
		LOGGER.info("FarmService oneSelectFarm 호출");
		return farmDao.oneSelectFarm(fName);
	}
	
	public List<Farm> listSelectFarm(){
		LOGGER.info("FarmService listSelectFarm 호출");
		return farmDao.listSelectFarm();
	}
	
	public void insertFarm(FarmMemberRequest farmMemberRequest) {
		LOGGER.info("FarmService 호출");
		LOGGER.info("FarmService farmMemberView ===> "+farmMemberRequest);
		farmDao.insertFarm(farmMemberRequest);
		
	}
}
