/*나성수*/
package com.spam.sfplanner.category;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/*
 * 산업분류카테고리 관련 Dao
 */
@Repository
public class CategoryIndustryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NAMESPACE = "com.spam.sfplanner.category.CategoryIndustryMapper.";
	
	/**
	 * 산업카테고리 수정 처리 Dao
	 * @param 산업카테고리 수정 화면에서 받아온 데이터
	 */
	public void updateCategoryIndustry(CategoryIndustryDb categoryIndustryDb) {
		sqlSessionTemplate.update(NAMESPACE+"updateCategoryIndustry", categoryIndustryDb);
	}
	
	/**
	 * 산업카테고리 수정 화면 출력 처리 Dao
	 * @param 산업카테고리넘버
	 * @return 산업카테고리명
	 */
	public CategoryIndustryDb updateCategoryIndustry(int industryNumber) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"oneSelectCategoryIndustry", industryNumber);
	}
	
	/**
	 * 산업카테고리 삭제 처리 Dao
	 * @param 산업카테고리넘버
	 */
	public void deleteCategoryIndustry(int industryNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteCategoryIndustry", industryNumber);
	}
	
	/**
	 * 검색 조건에 따른 산업카테고리 리스트 출력  Dao
	 * @param 산업명,등록기관
	 * @return 산업카테고리 리스트
	 */
	public List<CategoryIndustryDb> listSelectCategoryIndustry(Map<String, String> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"searchListSelectCategoryIndustry", map);
	}
	
	/**
	 * 산업카테고리 리스트 출력 Dao
	 * @return 산업카테고리 리스트
	 */
	public List<CategoryIndustryDb> listSelectCategoryIndustry() {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectCategoryIndustry");
	}
	
	/**
	 * 산업카테고리 등록 처리 Dao
	 * @param 등록하는 관리기관넘버,등록하는 산업명
	 */
	public void insertCategoryIndustry(Map<String, Object> map) {
		sqlSessionTemplate.insert(NAMESPACE+"insertCategoryIndustry", map);
	}
}
