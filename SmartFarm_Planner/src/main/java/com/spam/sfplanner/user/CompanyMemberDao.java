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
	
	/*업체 회원 삭제처리 Dao*/
	public void deleteCompanyMember(String cMemberId) {
		sqlSession.delete(NAMESPACE+"deleteCompanyMember", cMemberId);
	}
	
	/*업체 회원 수정처리 Dao*/
	public void updateCompanyMember(CompanyMemberView companyMemberView) {
		sqlSession.update(NAMESPACE+"updateCompanyMember", companyMemberView);
	}
	
	/*업체 회원 상세내용 Dao*/
	public CompanyMemberDb onSelectCompanyMember(String cMemberId) {
		return sqlSession.selectOne(NAMESPACE+"onSelectCompanyMember", cMemberId);
	}
	
	/*업체 회원 리스트 Dao*/
	public List<CompanyMemberDb> listSelectCompanyMember(String cMemberName){
		return sqlSession.selectList(NAMESPACE+"listSelectCompanyMember", cMemberName);
	}
	
	/*업체 회원 등록 아이디 중복체크 Dao*/
	public String checkId(String cMemberId) {
		return sqlSession.selectOne(NAMESPACE+"checkId",cMemberId);
	}
	
	/*업체 회원 등록처리 Dao*/
	public void insertCompanyMember(CompanyMemberView companyMemberView) {
		logger.info("CompanyMemberDao 호출");
		sqlSession.insert(NAMESPACE+"insertCompanyMember", companyMemberView);
	}

}
