/*[김재희]*/
package com.spam.sfplanner.category;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryThemeDao {
	@Autowired private SqlSessionTemplate sqlSession;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryThemeDao.class);
	private static final String NAMESPACE = "com.spam.sfplanner.category.CategoryThemeMapper.";
	
	/*매개변수 int타입의 themeNumber를 받아 해당하는 테마카테고리 하나를 삭제처리하는 메서드*/
	public void deleteCategoryTheme(int themeNumber) {
		sqlSession.delete(NAMESPACE+"deleteCategoryTheme", themeNumber);
	}
	
	/*매개변수 categoryThemeDb를 받아 테마카테고리를 수정처리하는 메서드*/
	public void updateCategoryTheme(CategoryTheme categoryTheme) {
		LOGGER.info("CategoryThemeDao updateCategoryTheme 호출");
		sqlSession.update(NAMESPACE+"updateCategoryTheme", categoryTheme);
	}
	
	/*매개변수 themeName을 받아 테마카테고리 수정할 때 수정할화면 하나를 조회해 출력하는 메서드*/
	public CategoryTheme oneSelectCategoryTheme(String themeName) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectCategoryTheme", themeName);
	}
	
	public List<CategoryTheme> searchListSelectCategoryTheme(Map<String, String> map){
		System.out.println("map: "+map);
		return sqlSession.selectList(NAMESPACE+"searchListSelectCategoryTheme", map);
	}
	
	/*테마카테고리의 전체 리스트를 조회하는 메서드*/
	public List<CategoryTheme> listSelectCategoryTheme(){
		return sqlSession.selectList(NAMESPACE+"listSelectCategoryTheme");
	}
	
	/*매개변수 categoryThemeDb를 받아 테마 카테고리를 등록하는 메서드*/
	public void insertCategoryTheme(CategoryTheme categoryTheme) {
		sqlSession.insert(NAMESPACE+"insertTheme", categoryTheme);
	}

}
