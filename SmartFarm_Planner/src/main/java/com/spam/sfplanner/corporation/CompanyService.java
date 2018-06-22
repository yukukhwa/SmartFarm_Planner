/*배건헤*/
package com.spam.sfplanner.corporation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.CompanyMemberDao;
import com.spam.sfplanner.category.CategoryDeal;
import com.spam.sfplanner.category.CategoryDealDao;
import com.spam.sfplanner.user.CompanyMember;
import com.spam.sfplanner.user.CompanyMemberRequest;
@Transactional
@Service
public class CompanyService {
	@Autowired 
	private CompanyDao companyDao;
	@Autowired
	private CompanyMemberDao companyMemberDao;
	@Autowired
	private CategoryDealDao categoryDealDao;
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyService.class);
	
	/*업체 삭제처리 Service*/
	public void deleteCompany(int cNumber, String cName) {
		for(CompanyMember companyMember : companyMemberDao.listSelectCompanyMember(cName)) {
			companyMemberDao.deleteCompanyMember(companyMember.getcMemberId());
		}
		companyDao.deleteCompany(cNumber);
	}
	
	/*업체 수정처리 Service*/
	public int updateCompany(CompanyMemberRequest companyMemberRequest) {
		int checkId = 0;
		for(CompanyMember companyMember : companyMemberDao.listSelectCompanyMember(companyMemberRequest.getcName())) {
			if(companyMemberRequest.getcMemberId().equals(companyMember.getcMemberId())) {
				checkId = 1;
			}
		}
		if(checkId == 0) {
			return 0;
		}
		companyDao.updateCompany(companyMemberRequest);
		return 1;
	}
	
	/*업체 수정화면 출력 Service*/
	public Company updateCompany(String cName) {
		return companyDao.oneSelectCompany(cName);
	}
	
	/*업체 상세내용 출력 Service*/
	public Company oneSelectCompany(String cName) {
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
	public void insertCompany(CompanyMemberRequest companyMemberRequest) {
		logger.info("CompanyService 호출");
		companyDao.insertCompany(companyMemberRequest);
	}
	public Map<String, Object> insertCompany(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<CategoryDeal> categoryDealList = categoryDealDao.listSelectCategoryDeal();
		map.clear();
		map.put("categoryDealList", categoryDealList);
		return map;
	
	}
}
