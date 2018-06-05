package com.spam.sfplanner.corporation;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyDao {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyDao.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	final private String NAMESPACE = "com.spam.sfplanner.corporation.CompanyMapper.";
	
	public int insertCompanyDB(CompanyDB companyDB) {
		int row = sqlSession.insert(NAMESPACE+"insertCompanyDB", companyDB);
		return row;
	}
	
}
