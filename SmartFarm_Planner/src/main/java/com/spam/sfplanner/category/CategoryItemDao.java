/*나성수*/
package com.spam.sfplanner.category;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryItemDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NAMESPACE = "com.spam.sfplanner.category.CategoryEquipMapper.";
	
	/**
	 * 품목카테고리 수정 처리 Dao
	 * @param 품목카테고리 수정 화면에서 받아온 데이터
	 */
	public void updateCategoryItem(CategoryItemDb categoryItemDb) {
		sqlSessionTemplate.update(NAMESPACE+"updateCategoryItem", categoryItemDb);
	}
	
	/**
	 * 품목카테고리 수정 화면 출력 Dao
	 * @param 품목 넘버
	 * @return 품목카테고리 수정 화면
	 */
	public CategoryItemDb updateCategoryItem(int iItemNumber) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"oneSelectCategoryItem", iItemNumber);
	}
	
	/**
	 * 품목카테고리 삭제 처리 Dao
	 * @param 해당 품목 넘버
	 */
	public void deleteCategoryItem(int iItemNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteCategoryItem", iItemNumber);
	}
	
	/**
	 * 검색 조건에 따른 품목카테고리 리스트 출력 Dao
	 * @param 품목명,산업명,등록기관명
	 * @return 품목카테고리 리스트
	 */
	public List<CategoryItemDb> listSelectCategoryItem(Map<String,String> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"searchListSelectCategoryItem",map);
	} 
	
	/**
	 * 품목카테고리 리스트 출력 Dao
	 * @return 품목카테고리 리스트
	 */
	public List<CategoryItemDb> listSelectCategoryItem() {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectCategoryItem");
	}
	
	/**
	 * 품목카테고리 등록 처리 Dao
	 * @param 산업카테넘버,등록기관명,품목명
	 */
	public void insertCategoryItem(Map<String,Object> map) {
		sqlSessionTemplate.insert(NAMESPACE+"insertCategoryItem", map);
	}
}
