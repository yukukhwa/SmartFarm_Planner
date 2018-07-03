/*[김재희]*/
package com.spam.sfplanner.corporation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spam.sfplanner.user.FarmMemberRequest;

@Repository
public class FarmDao {
	@Autowired SqlSessionTemplate sqlSession;
	
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmDao.class);
	private static final String NAMESPACE = "com.spam.sfplanner.corporation.FarmMapper.";
	
	public int fNumberCheck(int fNumber) {
		return sqlSession.selectOne(NAMESPACE+"fNumberCheck", fNumber);
	}
	
	public int fNameCheck(String fName) {
		System.out.println(fName);
		return sqlSession.selectOne(NAMESPACE+"fNameCheck", fName);
	}
	
	public void updateFarm(FarmMemberRequest farmMemberRequest) {
		sqlSession.update(NAMESPACE+"updateFarm", farmMemberRequest);
	}
	
	/*농가의 넘버가 당겨있는 int타입의 fNumber를 매개변수로 받아 해당 농가의 정보를 삭제하는 메서드*/
	public void deleteFarm(int fNumber) {
		sqlSession.delete(NAMESPACE+"deleteFarm", fNumber);
	}
	
	public List<Farm> searchListSelectFarm(String fName){
		return sqlSession.selectList(NAMESPACE+"searchlistSelectFarm", fName);
	}
	
	/*하나의 농가의 정보를 상세보기 가능한 메서드 매개변수로 farmDb를 받음*/
	public Farm oneSelectFarm(String fName) {
		LOGGER.info("FarmDao oneSelectFarm 호출");
		return sqlSession.selectOne(NAMESPACE+"oneSelectFarm", fName);
	}
	
	/*전체 농가 리스트를 출력하는 메서드*/
	public List<Farm> listSelectFarm() {
		LOGGER.info("FarmDao listSelectFarm 호출");
		return sqlSession.selectList(NAMESPACE+"listSelectFarm");
	}

	public void insertFarm(FarmMemberRequest farmMemberRequest) {
		LOGGER.info("FarmDao insertFarm 호출");
		sqlSession.insert(NAMESPACE+"insertFarm", farmMemberRequest);
	}
}
