/*배건혜*/
package com.spam.sfplanner.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyMemberDao {	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberDao.class);
	final private String NAMESPACE = "com.spam.sfplanner.user.CompanyMemberMapper.";
	
	
	
	public List<CompanyMemberDb> listSelectCompanyMember(String cMemberName){
		return sqlSession.selectList(NAMESPACE+"listSelectCompanyMember", cMemberName);
	}
	
	public String checkId(String cMemberId) {
		return sqlSession.selectOne(NAMESPACE+"checkId",cMemberId);
	}
	
	public void insertCompanyMember(CompanyMemberView companyMemberView) {
		logger.info("CompanyMemberDao 호출");
		sqlSession.insert(NAMESPACE+"insertCompanyMember", companyMemberView);
	}

}
