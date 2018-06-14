/*배건혜*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.login.Login;
@Transactional
@Service
public class CategoryDealService {
	@Autowired 
	private CategoryDealDao categoryDealDao;
	private static final Logger logger = LoggerFactory.getLogger(CategoryDealService.class);
	
	/*거래처카테고리 삭제 Service*/
	public void deleteCategoryDeal(int dealNumber) {
		categoryDealDao.deleteCategoryDeal(dealNumber);
	}
	
	/*거래처카테고리 수정처리 Service*/
	public void updateCategoryDeal(CategoryDeal categoryDeal) {
		categoryDealDao.updateCategoryDeal(categoryDeal);
	}
	
	/*하나의 거래처카테고리 호출 Service*/ 
	public CategoryDeal oneSelectCategoryDeal(int dealNumber) {
		return categoryDealDao.oneSelectCategoryDeal(dealNumber);
	}
	
	/*거래처카테고리 리스트 출력 Service*/
	public List<CategoryDeal> listSelectCategoryDeal(){
		return categoryDealDao.listSelectCategoryDeal();
	}
	
	/*거래처카테고리 등록 Service*/
	public void insertCategoryDeal(CategoryDeal categoryDeal, HttpSession session) {
		logger.info("CategoryDealService 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aNumber", ((Login)session.getAttribute("loginMember")).getCorpNumber());
		map.put("dealClassification", categoryDeal.getDealClassification());
		categoryDealDao.insertCategoryDeal(map);
	}
}
