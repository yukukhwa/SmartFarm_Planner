/*[김재희]*/
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
	
	/*아이디 체크하는 메서드*/
	public int idCheck(String fMemberId) {
		return sqlSession.selectOne(NAMESPACE+"farmIdCheck", fMemberId);
	}
	
	/*농가회원정보를 삭제처리하는 메서드*/
	public void deleteFarmMember(String fMemberId) {
		LOGGER.info("FarmMemberDao deleteFarmMember");
		sqlSession.delete(NAMESPACE+"deleteFarmMember", fMemberId);
	}
	
	/*농가회원의 정보를 수정처리하는 메서드*/
	public void updateFarmMember(FarmMemberRequest farmMemberRequest) {
		LOGGER.info("FarmMemberDao updateFarmMember 호출");
		sqlSession.update(NAMESPACE+"updateFarmMember", farmMemberRequest);
	}
	
	/*농가회원의 상세정보,내정보를 보는 메서드*/
	public FarmMember oneSelectFarmMember(String fMemberId) {
		LOGGER.info("FarmMemberDao oneSelectFarmMember 호출");
		return sqlSession.selectOne(NAMESPACE+"selectOneFarmMember", fMemberId);
	}
	
	/*한 농가의 회원전체리스트를 출력하는 메서드*/ 
	public List<FarmMember> listFarmMember(String fName) {
		LOGGER.info("FarmMemberDao listFarmMember 호출");
		return sqlSession.selectList(NAMESPACE+"selectFarmMemberList", fName);
	}
	
	/*농가회원을 등록하는 메서드*/
	public void insertFarmMember(FarmMemberRequest farmMemberRequest) {
		LOGGER.info("FarmMemberDao 호출");
		sqlSession.insert(NAMESPACE+"insertFarmMember", farmMemberRequest);
	}
}
