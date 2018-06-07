package com.spam.sfplanner.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CompanyMemberService {
	@Autowired
	private CompanyMemberDao companyMemberDao;
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberService.class);
	public void insertCompanyMember(CompanyMemberView companyMemberView) {
		logger.info("CompanyMemberService 호출");
		companyMemberDao.insertCompanyMember(companyMemberView);
	}
}
