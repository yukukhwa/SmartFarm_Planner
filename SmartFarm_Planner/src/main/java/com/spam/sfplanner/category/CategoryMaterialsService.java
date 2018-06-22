/*[김재희]*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class CategoryMaterialsService {
	@Autowired CategoryMaterialsDao categoryMaterialsDao;
	@Autowired CategoryThemeDao categoryThemeDao;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryMaterialsService.class);
	
	public void deleteCategoryMaterials(int materialsNumber) {
		categoryMaterialsDao.deleteCategoryMaterials(materialsNumber);
	}
	
	public void updateCategoryMaterials(CategoryMaterials categoryMaterials) {
		categoryMaterialsDao.updateCategoryMaterials(categoryMaterials);
	}
	
	public Map<String, Object> oneSelectCategoryMaterials(String materialsName) {
		List<CategoryTheme> categoryThemeList = categoryThemeDao.listSelectCategoryTheme();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categoryThemeList", categoryThemeList);
		map.put("categoryMaterials", categoryMaterialsDao.oneSelectCategoryMaterials(materialsName));
		return map;
	}
	
	public List<CategoryMaterials> searchListSelectCategoryMaterials(String searchKeyword, String materialsCateSearchOption){
		Map<String, String> map = new HashMap<String, String>();
		// 원자재검색의 옵션값이 "aName"과 같다면 map에 검색옵션키의 밸류값을 "aName"이라고 저장 후 dao에 넘긴다.
		if(materialsCateSearchOption.equals("aName")) {
			map.put("materialsCateSearchOption", "aName");
			map.put("searchKeyword", searchKeyword);
			return categoryMaterialsDao.searchListSelectCategoryMaterials(map);
		}
		// 그 외라면 materialsName으로 map을 저장 후 dao에 map매개변수를 넘긴다
		map.put("materialsCateSearchOption", "materialsName");
		map.put("searchKeyword", searchKeyword);
		return categoryMaterialsDao.searchListSelectCategoryMaterials(map);
	}
	
	public List<CategoryMaterials> listSelectCategoryMaterials(){
		return categoryMaterialsDao.listSelectCategoryMaterials();
	}
	
	// 등록처리
	public void insertCategoryMaterials(CategoryMaterials categoryMaterials) {
		categoryMaterialsDao.insertCategoryMaterials(categoryMaterials);
	}
	
	// 등록화면
	public List<CategoryTheme> insertCategoryMaterials() {
		return categoryThemeDao.listSelectCategoryTheme();
	}
}
