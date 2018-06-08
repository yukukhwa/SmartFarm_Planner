/*배건헤*/
package com.spam.sfplanner.corporation;

import java.util.List;

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
	
	public CompanyDb oneSelectCompany(String cName) {
		return companyDao.oneSelectCompany(cName);
	}
	public List<String> listSelectCompany(String cName){
		if(cName.equals("")) {
			return companyDao.listSelectCompany();
		}
		return companyDao.listSelectCompany(cName);
	}
	public List<String> listSelectCompany(){
		return companyDao.listSelectCompany();
	}
	public String checkCNumber(int cNumber) {
		return companyDao.checkCNumber(cNumber);
	}
	public void insertCompany(CompanyMemberView companyMemberView) {
		logger.info("CompanyService 호출");
		companyDao.insertCompany(companyMemberView);
	}
	
}
