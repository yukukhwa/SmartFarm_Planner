package com.spam.sfplanner.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyMemberDao {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberDao.class);
	
	@Autowired private SqlSessionTemplate sqlSession;
	
	final private String NAMESPACE = "com.spam.sfplanner.user.CompanyMemberMapper.";
	
	public int insertCompanyMember(CompanyMemberDB companyMemberDB) {
		int row = sqlSession.insert(NAMESPACE+"insertCompanyMember", companyMemberDB);
		return row;
	}

}
