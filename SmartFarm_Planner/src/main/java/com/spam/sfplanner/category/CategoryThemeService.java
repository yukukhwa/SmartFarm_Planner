package com.spam.sfplanner.category;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
