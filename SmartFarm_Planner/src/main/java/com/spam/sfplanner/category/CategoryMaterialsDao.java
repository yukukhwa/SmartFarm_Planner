package com.spam.sfplanner.category;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryMaterialsDao {
	@Autowired SqlSessionTemplate sqlSession;
	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryMaterialsDao.class);
	private static final String NAMESPACE = "com.spam.sfplanner.category.CategoryMaterialsMapper.";
	
	public void insertCategoryMaterials(CategoryMaterialsDb categoryMaterialsDb) {
		sqlSession.insert(NAMESPACE+"insertCategoryMaterials", categoryMaterialsDb);
	}
	
}
