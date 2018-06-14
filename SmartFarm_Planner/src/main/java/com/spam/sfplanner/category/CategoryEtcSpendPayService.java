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
	
	/*지타지출비카테고리 리스트 출력 Service*/
	public List<CategoryEtcSpendPay> listSelectCategoryEtcSpendPay(){
		return categoryEtcSpendPayDao.listSelectCategoryEtcSpendPay();
	}
	
	/*기타지출비카테고리 등록 처리 Service*/
	public void insertCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();	
		map.put("themeNumber", categoryEtcSpendPay.getCategoryThemeDb().getThemeNumber());
		map.put("fNumber", ((Login)session.getAttribute("loginMember")).getCorpNumber());
		map.put("fMemberId", ((Login)session.getAttribute("loginMember")).getId());
		map.put("etcspendpayName", categoryEtcSpendPay.getEtcspendpayName());	
		categoryEtcSpendPayDao.insertCategoryEtcSpendPay(map);
	}
	/**
	 * 기타지출비카테고리 화면 출력 Service
	 * @return 
	 */
	public List<CategoryTheme> insertCategoryEtcSpendPay(){
		return categoryThemeDao.listSelectCategoryTheme();
	}
}
