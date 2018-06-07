/*배건헤*/
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
	@Autowired 
	private CompanyDao companyDao;
	private static final Logger logger = LoggerFactory.getLogger(CompanyService.class);
	
	public void insertCompany(CompanyMemberView companyMemberView) {
		logger.info("CompanyService 호출");
		companyDao.insertCompany(companyMemberView);
		
	}
}
