/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryEquip;
import com.spam.sfplanner.category.CategoryEquipDao;
import com.spam.sfplanner.corporation.Company;
import com.spam.sfplanner.corporation.CompanyDao;
import com.spam.sfplanner.login.Login;

@Transactional
@Service
public class CompanyRentEquipService {
	@Autowired
	private CompanyRentEquipDao companyRentEquipDao;
	@Autowired
	private CategoryEquipDao categoryEquipDao;
	@Autowired
	private CompanyDao companyDao;
	/**
	 * 대여가능장비 수정처리 Service
	 * @param companyRentEquip
	 *//*
	public void updateCompanyRentEquip(CompanyRentEquip companyRentEquip) {
		companyRentEquipDao.updateCompanyRentEquip(companyRentEquip);
	}
	*/
	/**
	 * 대여가능장비 리스트에서 하나의 리스트를 수정화면에서 출력하는 Service
	 * @param cRentNumber
	 * @return
	 */
	public Map<String,Object> oneSelectCompanyRentEquip(int cRentNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categoryEquip", categoryEquipDao.listSelectCategoryEquip());
		map.put("company", companyDao.listSelectCompany());
		map.put("companyRentEquip", companyRentEquipDao.oneSelectCompanyRentEquip(cRentNumber));
		return map;
	}
	
	/**
	 * 대여가능장비 삭제처리 Service
	 * @param 대여가능장비넘버
	 */
	public void deleteCompnayRentEquip(int cRentNumber) {
		companyRentEquipDao.deleteCompanyRentEquip(cRentNumber);
	}
	
	public List<CompanyRentEquip> listSelectCompanyRentEquip(){
		Map<String, Object> map = null;
		return companyRentEquipDao.listSelectCompanyRentEquip(map);
	}
	
	public List<CompanyRentEquip> listSelectCompanyRentEquip(int cNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "업체넘버");
		return companyRentEquipDao.listSelectCompanyRentEquip(map);
	}
	
	public List<CompanyRentEquip> listSelectCompanyRentEquip(int cNumber,String column, String property ){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		map.put("cNumber", cNumber);
		return companyRentEquipDao.listSelectCompanyRentEquip(map);
	}
	/**
	 * 대여가능장비 등록처리 서비스 
	 * @param 대여가능장비,장비종류넘버
	 * @param 업체넘버
	 */
	public void insertCompanyRentEquip(CompanyRentEquip companyRentEquip,HttpSession session) {
		companyRentEquip.getCompany().setcNumber(((Login)session.getAttribute("loginMember")).getCorpNumber());
		companyRentEquipDao.insertCompanyRentEquip(companyRentEquip);
	}
	
	/**
	 * 대여가능장비 등록 화면 출력 서비스 
	 * @return 장비종류카테고리 리스트 
	 */
	public Map<String, Object> insertCompanyRentEquip(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<CategoryEquip> categoryEquipList = categoryEquipDao.listSelectCategoryEquip();
		List<String> companyList = companyDao.listSelectCompany();
		map.clear();
		map.put("categoryEquipList", categoryEquipList);
		map.put("companyList", companyList);
		return map;
	}
}
