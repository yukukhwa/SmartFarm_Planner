package com.spam.sfplanner.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spam.sfplanner.corporation.FarmDao;

@Repository
public class FarmMemberDao {
	@Autowired SqlSessionTemplate sqlSession;
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmDao.class);
	private final static String NAMESPACE = "com.spam.sfplanner.user.FarmMemberMapper.";
	
	/*농가회원의 상세정보,내정보를 보는 메서드*/
	public FarmMemberDb oneSelectFarmMember(FarmMemberDb farmMemberDb) {
		LOGGER.info("FarmMemberDao oneSelectFarmMember 호출");
		return sqlSession.selectOne(NAMESPACE+"selectOneFarmMember", farmMemberDb.getfMemberId());
	}
	
	/*한 농가의 회원전체리스트를 출력하는 메서드*/ 
	public List<FarmMemberDb> listFarmMember(int fNumber) {
		LOGGER.info("FarmMemberDao listFarmMember 호출");
		return sqlSession.selectList(NAMESPACE+"selectFarmMemberList", fNumber);
	}
	
	/*농가회원을 등록하는 메서드*/
	public void insertFarmMember(FarmMemberView farmMemberView) {
		LOGGER.info("FarmMemberDao 호출");
		sqlSession.insert(NAMESPACE+"insertFarmMember", farmMemberView);
	}
}
