/*나성수*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spam.sfplanner.login.LoginDb;

@Service
public class CategoryItemService {
	
	@Autowired
	private CategoryIndustryDao categoryIndustryDao;
	
	@Autowired
	private CategoryItemDao categoryItemDao;
	
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
