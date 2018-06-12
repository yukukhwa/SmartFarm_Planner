/*나성수*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.login.LoginDb;

@Transactional
@Service
public class CategoryItemService {
	
	@Autowired
	private CategoryIndustryDao categoryIndustryDao;
	
	@Autowired
	private CategoryItemDao categoryItemDao;
	
	/**
	 * 품목카테고리 수정 처리 서비스
	 * @param 품목카테고리 수정 화면에서 받아온 데이터
	 */
	public void updateCategoryItem(CategoryItemDb categoryItemDb) {
		categoryItemDao.updateCategoryItem(categoryItemDb);
	}
	
	/**
	 * 품목카테고리 수정 화면 출력 서비스
	 * @param 품목넘버
	 * @return 품목카테고리 수정 화면
	 */
	public Map<String,Object> updateCategoryItem(int iItemNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("industryList", categoryIndustryDao.listSelectCategoryIndustry());
		map.put("item", categoryItemDao.updateCategoryItem(iItemNumber));
		return map;
	}
	
	/**
	 * 품목카테고리 삭제 처리 서비스
	 * @param 해당 품목 넘버
	 */
	public void deleteCategoryItem(int iItemNumber) {
		categoryItemDao.deleteCategoryItem(iItemNumber);
	}
	
	/**
	 * 검색 조건에 따른 품목카테고리 리스트 출력 서비스
	 * @param 품목명
	 * @param 산업명
	 * @param 등록기관명
	 * @return 품목카테고리 리스트
	 */
	public List<CategoryItemDb> listSelectCategoryItem(String iItemName,String industryName,String aName) {
		Map<String,String> map = new HashMap<String, String>();
		if(iItemName != null) {
			map.put("iItemName", "%"+iItemName+"%");
			map.put("industryName", "%%");
			map.put("aName", "%%");
			return categoryItemDao.listSelectCategoryItem(map);
		}
		if(industryName != null) {
			map.put("iItemName", "%%");
			map.put("industryName", "%"+industryName+"%");
			map.put("aName", "%%");
			return categoryItemDao.listSelectCategoryItem(map);
		}
		map.put("iItemName", "%%");
		map.put("industryName", "%%");
		map.put("aName", "%"+aName+"%");
		return categoryItemDao.listSelectCategoryItem(map);
	}
	
	/**
	 * 품목분류카테고리 리스트 출력 서비스
	 * @return 품목카테고리 리스트
	 */
	public List<CategoryItemDb> listSelectCategoryItem() {
		return categoryItemDao.listSelectCategoryItem();
	}
	
	/**
	 * 품목카테고리 등록 처리 서비스
	 * @param 품목카테고리 등록 화면에서 받아온 데이터
	 * @param 등록기관넘버
	 */
	public void insertCategoryItem(CategoryItemDb categoryItemDb,HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("industryNumber", categoryItemDb.getCategoryIndustryDb().getIndustryNumber());
		map.put("aNumber", ((LoginDb)session.getAttribute("loginMember")).getCorpNumber());
		map.put("iItemName", categoryItemDb.getiItemName());
		categoryItemDao.insertCategoryItem(map);
	}
	
	/**
	 * 품목카테고리 등록 화면 출력 처리 서비스
	 * @return 산업카테고리 리스트
	 */
	public List<CategoryIndustryDb>  insertCategoryItem() {
		return categoryIndustryDao.listSelectCategoryIndustry();
	}
}
