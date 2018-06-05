package com.spam.sfplanner.corporation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.CompanyMemberView;
@Transactional
@Service
public class CompanyService {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyService.class);
	
	@Autowired 
	private CompanyDao companyDao;
	
	public int insertCompany(CompanyMemberView companyMemberView) {
		int row = companyDao.insertCompany(companyMemberView);
		return row;
	}
	
	

}
