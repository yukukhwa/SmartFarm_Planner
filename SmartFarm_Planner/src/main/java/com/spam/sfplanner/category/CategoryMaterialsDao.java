package com.spam.sfplanner.category;

import java.util.List;
import java.util.Map;

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
	
	/*원자재 카테고리에서 materials의 number를 매개변수로 받아 해당number에 대한 원자재 카테고리 정보들을 삭제처리하는 메서드*/
	public void deleteCategoryMaterials(int materialsNumber) {
		sqlSession.delete(NAMESPACE+"deleteCategoryMaterials", materialsNumber);
	}
	
	/*원자재 카테고리에서 수정할 정보들을 매개변수 categoryMaterialsDb를 받아 수정처리하는 메서드*/
	public void updateCategoryMaterials(CategoryMaterials categoryMaterials) {
		sqlSession.update(NAMESPACE+"updateCategoryMaterials", categoryMaterials);
	}
	
	/*매개변수 materialsName을 받아 원자재 카테고리 하나에대한 정보들을 출력해주는 메서드*/
	public CategoryMaterials oneSelectCategoryMaterials(String materialsName) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectCategoryMaterials", materialsName);
	}
	
	public List<CategoryMaterials> searchListSelectCategoryMaterials(Map<String, String> map){
		System.out.println("Materials map: "+map);
		return sqlSession.selectList(NAMESPACE+"searchListSelectCategoryMaterials", map);
	}
	
	/*원자재 카테고리의 전체 리스트를 출력조회 하는 메서드*/  
	public List<CategoryMaterials> listSelectCategoryMaterials(){
		return sqlSession.selectList(NAMESPACE+"listSelectCategoryMaterials");
	}
	
	/*매개변수로 categoryMaterialsDb를 받아 원자재카테고리를 등록하는 메서드*/
	public void insertCategoryMaterials(CategoryMaterials categoryMaterials) {
		sqlSession.insert(NAMESPACE+"insertCategoryMaterials", categoryMaterials);
	}
	
}
