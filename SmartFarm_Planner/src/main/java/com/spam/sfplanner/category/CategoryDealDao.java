/*배건혜*/
package com.spam.sfplanner.category;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDealDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(CategoryDealDao.class);
	final private String NAMESPACE = "com.spam.sfplanner.category.CategoryDealMapper.";
	
	/*거래처카테고리 삭제Dao*/
	public void deleteCategoryDeal(int dealNumber) {
		sqlSession.delete(NAMESPACE+"deleteCategoryDeal", dealNumber);
	}
	
	/*거래처카테고리 수정처리 Dao*/
	public void updateCategoryDeal(CategoryDealDb categoryDealDb) {
		sqlSession.update(NAMESPACE+"updateCategoryDeal", categoryDealDb);
	}
	
	/*하나의 거래처카테고리 호출Dao*/
	public CategoryDealDb oneSelectCategoryDeal(int dealNumber) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectCategoryDeal", dealNumber);
	}
	
	/*거래처카테고리 리스트 출력Dao*/
	public List<CategoryDealDb> listSelectCategoryDeal(){
		return sqlSession.selectList(NAMESPACE+"listSelectCategoryDeal");
	}
	
	/*거래처카테고리 등록Dao*/
	public void insertCategoryDeal(Map<String, Object> map) {
		logger.info("CategoryDealDao 호출");
		sqlSession.insert(NAMESPACE+"insertCategoryDeal", map);
	}
}
