/*배건혜*/
package com.spam.sfplanner.corporation;

import java.util.List;

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
	
	public CompanyDb oneSelectCompany(String cName) {
		logger.info("CompanyDao oneSelectCompany호출");
		return sqlSession.selectOne(NAMESPACE+"oneSelectCompany", cName);
	}
	public List<String>  listSelectCompany(String cName){
		return sqlSession.selectList(NAMESPACE+"listSelectCompany", cName);
	}
	public List<String> listSelectCompany(){
		logger.info("CompanyDao listSelectCompany호출 ");
		return sqlSession.selectList(NAMESPACE+"listSelectCompany");
	}
	public void insertCompany(CompanyMemberView companyMemberView) {
		logger.info("CompanyDao 호출");
		sqlSession.insert(NAMESPACE+"insertCompany", companyMemberView);		
	}
	public String checkCNumber(int cNumber) {
		return sqlSession.selectOne(NAMESPACE+"checkCNumber", cNumber);
	}
	
}
