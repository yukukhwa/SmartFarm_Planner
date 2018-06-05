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
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyDao.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	final private String NAMESPACE = "com.spam.sfplanner.corporation.CompanyMapper.";
	
	public int insertCompany(CompanyMemberView companyMemberView) {
		int row = sqlSession.insert(NAMESPACE+"insertCompanyDB", companyMemberView);
		return row;
	}
	
}
