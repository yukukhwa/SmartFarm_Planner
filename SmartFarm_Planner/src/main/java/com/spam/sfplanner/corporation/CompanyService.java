package com.spam.sfplanner.corporation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyService {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyService.class);
	
	@Autowired 
	private CompanyDao companyDao;
	
	public int insertCompanyDB(CompanyDB companyDB) {
		int row = companyDao.insertCompanyDB(companyDB);
		return row;
	}
	
	

}
