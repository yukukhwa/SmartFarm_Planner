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
	
	final private String NAMESPACE = "com.spam.sfplanner.corporation.CompanyMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	private static final Logger logger = LoggerFactory.getLogger(CompanyDao.class);
	
	
	/*업체 삭제처리 Dao*/
	public void deleteCompany(int cNumber) {
		sqlSession.delete(NAMESPACE+"deleteCompany", cNumber);
	}
	
	/*업체 수정처리 Dao*/
	public void updateCompany(CompanyMemberView companyMemberView) {
		sqlSession.update(NAMESPACE+"updateCompany", companyMemberView);
	}
	
	/*업체 상세내용 출력 Dao*/
	public CompanyDb oneSelectCompany(String cName) {
		logger.info("CompanyDao oneSelectCompany호출");
		return sqlSession.selectOne(NAMESPACE+"oneSelectCompany", cName);
	}
	
	/*모든 업체 리스트 출력 Dao*/ 
	public List<String> listSelectCompany(){
		logger.info("CompanyDao listSelectCompany호출 ");
		return sqlSession.selectList(NAMESPACE+"listSelectCompany");
	}
	
	/*업체 확인하는 Dao*/
	public String checkCNumber(int cNumber) {
		return sqlSession.selectOne(NAMESPACE+"checkCNumber", cNumber);
	}
	
	/*업체 등록 Dao*/
	public void insertCompany(CompanyMemberView companyMemberView) {
		logger.info("CompanyDao 호출");
		sqlSession.insert(NAMESPACE+"insertCompany", companyMemberView);		
	}
	
	
}
