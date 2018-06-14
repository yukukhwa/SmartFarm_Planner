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
	final private String NAMESPACE = "com.spam.sfplanner.category.CategoryEtcSpendPayMapper.";
	
	@Autowired 
	private SqlSessionTemplate sqlSession;

	/*기타지출비 카테고리 리스트 Dao*/
	public List<CategoryEtcSpendPay> listSelectCategoryEtcSpendPay(){
		return sqlSession.selectList(NAMESPACE+"listSelectEtcSpendPay");
	}
	
	/*기타지출비용카테고리 등록 Dao*/
	public void insertCategoryEtcSpendPay(Map<String, Object> map) {
		sqlSession.insert(NAMESPACE+"insertCategoryEtcSpendPay", map);
	}
}
