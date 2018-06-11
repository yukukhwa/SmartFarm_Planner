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
