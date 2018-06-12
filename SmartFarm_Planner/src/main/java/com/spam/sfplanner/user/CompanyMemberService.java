package com.spam.sfplanner.user;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class CompanyMemberService {
	@Autowired
	private CompanyMemberDao companyMemberDao;
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberService.class);
	
	/*업체회원 삭제처리 Service*/
	public void deleteCompanyMember(String cMemberId) {
		logger.info("CompanyMemberService deleteCompanyMember 호출");
		companyMemberDao.deleteCompanyMember(cMemberId);
	}
	
	/*업체 회원 수정처리 Service*/
	public void updateCompanyMember(CompanyMemberView companyMemberView) {
		logger.info("CompanyMemberService updateCompanyMember 호출");
		companyMemberDao.updateCompanyMember(companyMemberView);
	}
	
	/*업체 회원 상세보기 Service*/
	public CompanyMemberDb oneSelectCompanyMember(String cMemberId) {
		logger.info("CompanyMemberService oneSelectCompanyMember 호출");
		return companyMemberDao.onSelectCompanyMember(cMemberId);
	}
	
	/*업체 회원 리스트 Service*/
	public List<CompanyMemberDb> listSelectCompanyMember(String cMemberName){
		logger.info("CompanyMemberService listSelectCompanyMember 호출");
		return companyMemberDao.listSelectCompanyMember(cMemberName);
	}
	
	/*업체 회원 아이디 중복체크 Service*/  
	public String checkId(String cMemberId) {
		return companyMemberDao.checkId(cMemberId);
	}
	
	/*업체 회원 등록 처리 Service*/
	public void insertCompanyMember(CompanyMemberView companyMemberView) {
		logger.info("CompanyMemberService 호출");
		companyMemberDao.insertCompanyMember(companyMemberView);
	}
}
