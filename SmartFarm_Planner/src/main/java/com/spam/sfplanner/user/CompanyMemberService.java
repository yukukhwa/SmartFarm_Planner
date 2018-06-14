package com.spam.sfplanner.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.corporation.CompanyDao;

@Transactional
@Service
public class CompanyMemberService {
	@Autowired
	private CompanyMemberDao companyMemberDao;
	@Autowired
	private CompanyDao companyDao;
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberService.class);
	
	/*업체회원 삭제처리 Service*/
	public void deleteCompanyMember(String cMemberId) {
		logger.info("CompanyMemberService deleteCompanyMember 호출");
		companyMemberDao.deleteCompanyMember(cMemberId);
	}
	
	/*업체 회원 수정처리 Service*/
	public void updateCompanyMember(CompanyMemberRequest companyMemberRequest) {
		logger.info("CompanyMemberService updateCompanyMember 호출");
		companyMemberDao.updateCompanyMember(companyMemberRequest);
	}
	
	/*업체 회원 상세보기 Service*/
	public CompanyMember oneSelectCompanyMember(String cMemberId) {
		logger.info("CompanyMemberService oneSelectCompanyMember 호출");
		return companyMemberDao.onSelectCompanyMember(cMemberId);
	}
	
	/*업체 회원 리스트 Service*/
	public Map<String, Object> listSelectCompanyMember(String cName){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list",companyMemberDao.listSelectCompanyMember(cName));
		map.put("bossId",companyDao.oneSelectCompany(cName).getCompanyMemberDb().getcMemberId());
		return map;
	}
	
	/*업체 회원 아이디 중복체크 Service*/  
	public String checkId(String cMemberId) {
		return companyMemberDao.checkId(cMemberId);
	}
	
	/*업체 회원 등록 처리 Service*/
	public void insertCompanyMember(CompanyMemberRequest companyMemberRequest) {
		logger.info("CompanyMemberService 호출");
		companyMemberDao.insertCompanyMember(companyMemberRequest);
	}
}
