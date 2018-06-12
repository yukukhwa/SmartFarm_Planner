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
public class CategoryThemeService {
	@Autowired CategoryThemeDao categoryThemeDao;	
	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryThemeService.class);
	
	/*해당 테마카테고리를 삭제처리*/
	public void deleteCategoryTheme(int themeNumber) {
		categoryThemeDao.deleteCategoryTheme(themeNumber);
	}
	
	/*테마카테고리의 수정정보를 입력후 수정처리*/ 
	public void updateCategoryTheme(CategoryThemeDb categoryThemeDb) {
		LOGGER.info("CategoryThemeService updateTheme 호출");
		categoryThemeDao.updateCategoryTheme(categoryThemeDb);
	}
	
	/*수정할 때 수정할 테마카테고리 하나의 정보를 출력*/
	public CategoryThemeDb oneSelectCategoryTheme(String themeName) {
		return categoryThemeDao.oneSelectCategoryTheme(themeName);
	}
	
	public List<CategoryThemeDb> searchListSelectCategoryTheme(String searchKeyword, String themeCateSearchOption){
		Map<String, String> map = new HashMap<String, String>();
		// 테마의 검색옵션이 aName과 같다면 map에 테마검색옵션의 키의 밸류를 "aName"이라 저장후 dao에 매개변수로 map을 넘긴다.
		if(themeCateSearchOption.equals("aName")) {
			map.put("themeCateSearchOption", "aName");
			map.put("searchKeyword", searchKeyword);
			return categoryThemeDao.searchListSelectCategoryTheme(map);
		}
		// 그 외 테마의 검색옵션이라면 "themeName"으로 키의 밸류값을 map에 저장 후 dao에 매개변수 map을 넘긴다.
		map.put("themeCateSearchOption", "themeName");
		map.put("searchKeyword", searchKeyword);
		return categoryThemeDao.searchListSelectCategoryTheme(map);
	}
	
	/*테마 카테고리의 전체 리스트 출력*/ 
	public List<CategoryThemeDb> listSelectCategoryTheme(){
		return categoryThemeDao.listSelectCategoryTheme();
	}
	
	/*테마 카테고리 등록*/
	public void insertCategoryTheme(CategoryThemeDb categoryThemeDb) {
		categoryThemeDao.insertCategoryTheme(categoryThemeDb);
		System.out.println("CategoryThemeService CategoryThemeDb===> "+categoryThemeDb);
	}
}
