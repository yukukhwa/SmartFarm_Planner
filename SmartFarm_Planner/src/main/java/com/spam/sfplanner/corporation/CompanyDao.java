/*배건혜*/
package com.spam.sfplanner.corporation;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spam.sfplanner.user.CompanyMemberView;

@Repository
public class CompanyDao {	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	private static final Logger logger = LoggerFactory.getLogger(CompanyDao.class);
	final private String NAMESPACE = "com.spam.sfplanner.corporation.CompanyMapper.";
	
	public void insertCompany(CompanyMemberView companyMemberView) {
		logger.info("CompanyDao 호출");
		sqlSession.insert(NAMESPACE+"insertCompany", companyMemberView);		
	}
	
}
