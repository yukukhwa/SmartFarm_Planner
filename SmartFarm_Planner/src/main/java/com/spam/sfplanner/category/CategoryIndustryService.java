/*나성수*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spam.sfplanner.login.LoginDb;

/*
 * 산업분류카테고리 관련 서비스
 */
@Service
public class CategoryIndustryService {
	
	@Autowired
	private CategoryIndustryDao categoryIndustryDao;
	
	/**
	 * 산업카테고리 수정 처리 서비스
	 * @param 산업카테고리 수정 화면에서 받아온 데이터
	 */
	public void updateCategoryIndustry(CategoryIndustryDb categoryIndustryDb) {
		categoryIndustryDao.updateCategoryIndustry(categoryIndustryDb);
	}
	
	/**
	 * 산업카테고리 수정 화면 출력 서비스
	 * @param 산업카테고리넘버
	 * @return 산업카테고리명
	 */
	public CategoryIndustryDb updateCategoryIndustry(int industryNumber) {
		return categoryIndustryDao.updateCategoryIndustry(industryNumber);
	}
	
	/**
	 * 산업카테고리 삭제 처리 서비스
	 * @param 산업카테고리넘버
	 */
	public void deleteCategoryIndustry(int industryNumber) {
		categoryIndustryDao.deleteCategoryIndustry(industryNumber);
	}
	
	/**
	 * 검색 조건에 따른 산업카테고리 리스트 출력 서비스
	 * @param 산업명
	 * @param 등록기관명
	 * @param 검색 조건명
	 * @return 산업카테고리 리스트
	 */
	public List<CategoryIndustryDb> listSelectCategoryIndustry(String industryName,String aName){
		Map<String,String> map = new HashMap<String, String>();
		if(industryName == null) {
			map.put("industryName", "%%");
			map.put("aName", "%"+aName+"%");
			return categoryIndustryDao.listSelectCategoryIndustry(map);
		}
		map.put("industryName", "%"+industryName+"%");
		map.put("aName", "%%");
		return categoryIndustryDao.listSelectCategoryIndustry(map);
	}
	
	/**
	 * 산업카테고리 리스트 출력 서비스
	 * @return 산업카테고리 리스트
	 */
	public List<CategoryIndustryDb> listSelectCategoryIndustry() {
		return categoryIndustryDao.listSelectCategoryIndustry();
	}
	
	/**
	 * 산업카테고리 등록 처리 서비스
	 * @param 산업명
	 * @param 등록하는 관리기관넘버(세션값)
	 */
	public void insertCategoryIndustry(CategoryIndustryDb categoryIndustryDb,HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aNumber", ((LoginDb)session.getAttribute("loginMember")).getCorpNumber());
		map.put("industryName", categoryIndustryDb.getIndustryName());
		categoryIndustryDao.insertCategoryIndustry(map);
	}
}
