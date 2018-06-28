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
public class CategoryEtcSpendPayDao {
	private static final Logger logger = LoggerFactory.getLogger(CategoryEtcSpendPayDao.class);
	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	final private String NAMESPACE = "com.spam.sfplanner.category.CategoryEtcSpendPayMapper.";
	
	/**
	 * 기타지출비카테고리 삭제처리 Dao
	 * @param etcspendpayNumber
	 */
	public void deleteCategoryEtcSpendPay(int etcspendpayNumber) {
		sqlSession.delete(NAMESPACE+"deleteCategoryEtcSpendPay", etcspendpayNumber);
	}
	
	/**
	 * 기타지출비카테고리 수정처리 Dao
	 * @param categoryEtcSpendPay
	 */
	public void updateCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay) {
		sqlSession.update(NAMESPACE+"updateCategoryEtcSpendPay", categoryEtcSpendPay);
	}
	
	/**
	 * 기타지출비카테고리 하나의 리스트 조회화면 출력 Dao
	 * @param etcspendpayNumber
	 * @return
	 */
	public CategoryEtcSpendPay oneSelectCategoryEtcSpendPay(int etcspendpayNumber) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectCategoryEtcSpendPay", etcspendpayNumber);
	}
	
	/**
	 * 기타지출비카테고리 리스트 Dao
	 * @return
	 */
	public List<CategoryEtcSpendPay> listSelectCategoryEtcSpendPay(){
		return sqlSession.selectList(NAMESPACE+"listSelectCategoryEtcSpendPay");
	}
	
	/**
	 * 기타지출비카테고리 등록 Dao
	 * @param map
	 */
	public void insertCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay) {
		sqlSession.insert(NAMESPACE+"insertCategoryEtcSpendPay", categoryEtcSpendPay);
	}
}
