/*[김재희]*/
package com.spam.sfplanner.user;

import java.util.List;

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
	
	/*농가회원 한명의 상세한 정보를 보기*/
	public FarmMemberDb oneSelectFarmMember(FarmMemberDb farmMemberDb) {
		LOGGER.info("FarmMemberService oneSelectFarmMember 호출");
		return farmMemberDao.oneSelectFarmMember(farmMemberDb);
	}
	
	/*농가회원 전체 리스트*/
	public List<FarmMemberDb> listFarmMember(String fName){
		LOGGER.info("FarmMemberService listFarmMember 호출");
		return farmMemberDao.listFarmMember(fName);
	}
	
	/*농가회원 등록*/
	public void insertFarmMember(FarmMemberView farmMemberView) {
		LOGGER.info("FarmMemberService 호출");
		LOGGER.info("FarmMemberService farmMemberView ===>"+farmMemberView);
		farmMemberDao.insertFarmMember(farmMemberView);
	}
}
