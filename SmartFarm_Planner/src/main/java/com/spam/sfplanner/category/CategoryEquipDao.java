package com.spam.sfplanner.category;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryEquipDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(CategoryEquipDao.class);
	final private String NAMESPACE = "com.spam.sfplanner.category.CategoryEquipMapper.";
	
	/*장비종류카테고리 삭제 Dao*/
	public void deleteCategoryEquip(int equipNumber) {
		sqlSession.delete(NAMESPACE+"deleteCategoryEquip", equipNumber);
	}
	/*장비종류카테고리 수정처리 Dao*/
	public void updateCategoryEquip(CategoryEquipDb categoryEquipDb) {
		sqlSession.update(NAMESPACE+"updateCategoryEquip", categoryEquipDb);
	}
	/*하나의 장비종류카테고리 호출 Dao*/
	public CategoryEquipDb oneSelectCategoryEquip(int equipNumber) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectCategoryEquip", equipNumber);
	}
	/*장비종류카테고리 리스트 출력 Dao*/
	public List<CategoryEquipDb> listSelectCategoryEquip(){
		return sqlSession.selectList(NAMESPACE+"listSelectCategoryEquip");
	}
	/*장비종류카테고리 등록 Dao*/
	public void insertCategoryEquip(Map<String, Object> map) {
		sqlSession.insert(NAMESPACE+"insertCategoryEquip", map);
	}
}
