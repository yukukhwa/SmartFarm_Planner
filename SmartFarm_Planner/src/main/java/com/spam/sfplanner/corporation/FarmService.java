/*[김재희]*/
package com.spam.sfplanner.corporation;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.FarmMember;
import com.spam.sfplanner.user.FarmMemberDao;
import com.spam.sfplanner.user.FarmMemberRequest;

@Service
@Transactional
public class FarmService {
	@Autowired FarmDao farmDao;
	@Autowired FarmMemberDao farmMemberDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmService.class);
	
	/* fNumber와 fName을 매개변수로 받아 해당하는 농가의 정보와 그 농가에 해당하는 농가멤버들을 동시에 삭제처리 하는 서비스 */
	public void deleteFarm(int fNumber, String fName) {
		/* fName을 매개변수로 FarmMemberDao의 listFarmMember 메서드를 호출해 for문으로 돌려 리스트를 출력하고
		 * farmMember의 fMemberID를 겟팅해 매개변수로 farmMemberDao의 deleteFarmMember메서드를 호출하여
		 * farmMember의 정보들을 삭제처리 후 for문을 빠져나와 fNumber를 매개변수로 받아 farmDao의 deleteFarm 메서드를 호출해
		 * 농가의 정보를 삭제한다. */
		for(FarmMember farmMember : farmMemberDao.listFarmMember(fName)) {
			farmMemberDao.deleteFarmMember(farmMember.getfMemberId());
		}
		farmDao.deleteFarm(fNumber);
	}
	
	/* 검색조건인 fName을 매개변수로 받아 해당하는 농가들을 리스트로 출력하는 서비스 */
	public List<Farm> searchlistSelectFarm(String fName) {
		return farmDao.searchlistSelectFarm(fName);
	}
	
	/* 농가의 이름인 fName을 매개변수로 받아 해당하는 농가의 정보하나를 출력하는 서비스 */
	public Farm oneSelectFarm(String fName) {
		LOGGER.info("FarmService oneSelectFarm 호출");
		return farmDao.oneSelectFarm(fName);
	}
	
	/* 농가의 전체 리스트를 출력하는 서비스 */
	public List<Farm> listSelectFarm(){
		LOGGER.info("FarmService listSelectFarm 호출");
		return farmDao.listSelectFarm();
	}
	
	/* 매개변수로 farmMemberRequest를 받아 농가를 등록처리 하는 서비스 */
	public void insertFarm(FarmMemberRequest farmMemberRequest) {
		LOGGER.info("FarmService farmMemberView ===> "+farmMemberRequest);
		farmDao.insertFarm(farmMemberRequest);
		
	}
}
