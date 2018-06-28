/*배건혜*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.login.Login;
import com.sun.media.jfxmedia.logging.Logger;
@Transactional
@Service
public class CategoryEtcSpendPayService {
	
	@Autowired 
	private CategoryEtcSpendPayDao categoryEtcSpendPayDao;
	@Autowired
	private CategoryThemeDao categoryThemeDao;
	
	/**
	 * 기타지출카테고리 삭제처리 Service
	 * @param etcspendpayNumber
	 */
	public void deleteCategoryEtcSpendPay(int etcspendpayNumber) {
		categoryEtcSpendPayDao.deleteCategoryEtcSpendPay(etcspendpayNumber);
	}
	
	/**
	 * 기타지출비카테고리 수정처리 Service
	 * @param categoryEtcSpendPay
	 */
	public void updateCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay) {
		categoryEtcSpendPayDao.updateCategoryEtcSpendPay(categoryEtcSpendPay);
	}
	/**
	 * 기타지출비카테고리 리스트 중  하나의 리스트를 수정호면 조회에서 보여주는 Service
	 * @param etcspendpayNumber
	 * @return
	 */
	public Map<String, Object> oneSelectCategoryEtcSpendPay(int etcspendpayNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categoryTheme", categoryThemeDao.listSelectCategoryTheme());
		map.put("categoryEtcSpendPay", categoryEtcSpendPayDao.oneSelectCategoryEtcSpendPay(etcspendpayNumber));
		return map;
	}
	
	/**
	 * 기타비출비카테고리 리스트출력 Service
	 * @return
	 */
	public List<CategoryEtcSpendPay> listSelectCategoryEtcSpendPay(){
		return categoryEtcSpendPayDao.listSelectCategoryEtcSpendPay();
	}
	
	/**
	 * 기타지출비카테고리 등록처리 Service
	 * @param categoryEtcSpendPay
	 * @param session
	 */
	public void insertCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay) {
		categoryEtcSpendPayDao.insertCategoryEtcSpendPay(categoryEtcSpendPay);
	}
	/**
	 * 기타지출비카테고리 등록화면 출력 Service
	 * @return 
	 */
	public List<CategoryTheme> insertCategoryEtcSpendPay(){
		return categoryThemeDao.listSelectCategoryTheme();
	}
}
