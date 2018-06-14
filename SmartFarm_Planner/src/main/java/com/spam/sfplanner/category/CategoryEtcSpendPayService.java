package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.login.LoginDb;
import com.sun.media.jfxmedia.logging.Logger;
@Transactional
@Service
public class CategoryEtcSpendPayService {
	
	@Autowired 
	private CategoryEtcSpendPayDao categoryEtcSpendPayDao;
	@Autowired
	private CategoryThemeDao categoryThemeDao;
	
	/*지타지출비카테고리 리스트 출력 Service*/
	public List<CategoryEtcSpendPayDb> listSelectCategoryEtcSpendPay(){
		return categoryEtcSpendPayDao.listSelectCategoryEtcSpendPay();
	}
	
	/*기타지출비카테고리 등록 처리 Service*/
	public void insertCategoryEtcSpendPay(CategoryEtcSpendPayDb categoryEtcSpendPayDb, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();	
		map.put("themeNumber", categoryEtcSpendPayDb.getCategoryThemeDb().getThemeNumber());
		map.put("fNumber", ((LoginDb)session.getAttribute("loginMember")).getCorpNumber());
		map.put("fMemberId", ((LoginDb)session.getAttribute("loginMember")).getId());
		map.put("etcspendpayName", categoryEtcSpendPayDb.getEtcspendpayName());	
		categoryEtcSpendPayDao.insertCategoryEtcSpendPay(map);
	}
	/**
	 * 기타지출비카테고리 화면 출력 Service
	 * @return 
	 */
	public List<CategoryThemeDb> insertCategoryEtcSpendPay(){
		return categoryThemeDao.listSelectCategoryTheme();
	}
}
