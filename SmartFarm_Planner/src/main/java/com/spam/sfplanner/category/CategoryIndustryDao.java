/*나성수*/
package com.spam.sfplanner.category;

import java.util.HashMap;
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
	
	public void insertCategoryIndustry(Map<String, Object> map) {
		sqlSessionTemplate.insert(NAMESPACE+"insertCategoryIndustry", map);
	}
}
