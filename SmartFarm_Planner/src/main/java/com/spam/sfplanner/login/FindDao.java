// [유국화]
package com.spam.sfplanner.login;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FindDao {
	@Autowired private SqlSessionTemplate sqlSession;
	final private String namespace = "com.spam.sfplanner.login.FindMapper.";
	private static final Logger LOGGER = LoggerFactory.getLogger(FindController.class);
	
	// 관리자 비밀번호 찾기
	public String oneSelectFindAgencyPw(Find finddb) {
		LOGGER.info("비번 찾기 Dao");
		return sqlSession.selectOne(namespace+"selectAgencyMemberPw", finddb);
	}
	
	// 업체 회원 비밀번호 찾기
	public String oneSelectFindCompanyPw(Find finddb) {
		LOGGER.info("비번 찾기 Dao");
		return sqlSession.selectOne(namespace+"selectCompanyMemberPw", finddb);
	}
	
	// 농가 회원 비밀번호 찾기
	public String oneSelectFindFarmPw(Find finddb) {
		LOGGER.info("비번 찾기 Dao");
		return sqlSession.selectOne(namespace+"selectFarmMemberPw", finddb);
	}
	
	// 관리자 아이디 찾기
	public String oneSelectFindAgencyId(Find finddb) {
		LOGGER.info("아이디 찾기 Dao");
		return sqlSession.selectOne(namespace+"selectAgencyMemberId", finddb);
	}
	
	// 업체 회원 아이디 찾기
	public String oneSelectFindCompanyId(Find finddb) {
		LOGGER.info("아이디 찾기 Dao");
		return sqlSession.selectOne(namespace+"selectCompanyMemberId", finddb);
	}
	
	// 농가 회원 아이디 찾기
	public String oneSelectFindFarmId(Find finddb) {
		LOGGER.info("아이디 찾기 Dao");
		return sqlSession.selectOne(namespace+"selectFarmMemberId", finddb);
	}
}
