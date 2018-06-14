/*[김기성]*/
package com.spam.sfplanner.login;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginDao.class);
	
	final String NS = "com.spam.sfplanner.login.LoginMapper.";
	
	/*
	 * loginDb를 매개변수로 받아 select 쿼리문에 입력하여 실행하고 나온 결과값을 리턴한다.
	 * farm, company, agency 동일하게 처리한다.
	 */
	public Login oneSelectFarmMember(Login login) {
		return sqlSession.selectOne(NS+"oneSelectFarmMember", login);
	}

	public Login oneSelectCompanyMember(Login login) {
		return sqlSession.selectOne(NS+"oneSelectCompanyMember", login);
	}

	public Login oneSelectAgencyMember(Login login) {
		return sqlSession.selectOne(NS+"oneSelectAgencyMember", login);
	}
}
