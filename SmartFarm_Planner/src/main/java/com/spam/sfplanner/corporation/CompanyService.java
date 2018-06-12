/*배건헤*/
package com.spam.sfplanner.corporation;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.CompanyMemberDao;
import com.spam.sfplanner.user.CompanyMemberDb;
import com.spam.sfplanner.user.CompanyMemberView;
@Transactional
@Service
public class CompanyService {
	@Autowired 
	private CompanyDao companyDao;
	@Autowired
	private CompanyMemberDao companyMemberDao;
	private static final Logger logger = LoggerFactory.getLogger(CompanyService.class);
	
	/*업체 삭제처리 Service*/
	public void deleteCompany(int cNumber, String cName) {
		for(CompanyMemberDb companyMemberDb : companyMemberDao.listSelectCompanyMember(cName)) {
			companyMemberDao.deleteCompanyMember(companyMemberDb.getcMemberId());
		}
		companyDao.deleteCompany(cNumber);
	}
	
	/*업체 수정처리 Service*/
	public int updateCompany(CompanyMemberView companyMemberView) {
		int checkId = 0;
		for(CompanyMemberDb companyMemberDb : companyMemberDao.listSelectCompanyMember(companyMemberView.getcName())) {
			if(companyMemberView.getcMemberId().equals(companyMemberDb.getcMemberId())) {
				checkId = 1;
			}
		}
		if(checkId == 0) {
			return 0;
		}
		companyDao.updateCompany(companyMemberView);
		return 1;
	}
	
	/*업체 수정화면 출력 Service*/
	public CompanyDb updateCompany(String cName) {
		return companyDao.oneSelectCompany(cName);
	}
	
	/*업체 상세내용 출력 Service*/
	public CompanyDb oneSelectCompany(String cName) {
		return companyDao.oneSelectCompany(cName);
	}
	
	/*모든 업체 리스트 출력 Service*/
	public List<String> listSelectCompany(){
		return companyDao.listSelectCompany();
	}
	
	/*업체코드 있는지 확인하는 Service*/
	public String checkCNumber(int cNumber) {
		return companyDao.checkCNumber(cNumber);
	}
	
	/*업체 등록처리 Service*/
	public void insertCompany(CompanyMemberView companyMemberView) {
		logger.info("CompanyService 호출");
		companyDao.insertCompany(companyMemberView);
	}
}
