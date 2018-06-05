package com.spam.sfplanner.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CompanyMemberService {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyMemberService.class);
	
	@Autowired
	private CompanyMemberDao companyMemberDao;
	
	public int insertCompanyMember(CompanyMemberDB companyMemberDB) {
		int row = companyMemberDao.insertCompanyMember(companyMemberDB);
		return row;
	}
}
