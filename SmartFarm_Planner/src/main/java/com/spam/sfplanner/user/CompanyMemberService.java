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
	
	public List<CompanyMemberDb> listSelectCompanyMember(String cMemberName){
		return companyMemberDao.listSelectCompanyMember(cMemberName);
	}
	
	public String checkId(String cMemberId) {
		return companyMemberDao.checkId(cMemberId);
	}
	
	public void insertCompanyMember(CompanyMemberView companyMemberView) {
		logger.info("CompanyMemberService 호출");
		companyMemberDao.insertCompanyMember(companyMemberView);
	}
}
