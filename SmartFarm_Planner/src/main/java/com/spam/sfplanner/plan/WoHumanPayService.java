package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryTheme;
import com.spam.sfplanner.category.CategoryThemeDao;

@Transactional
@Service
public class WoHumanPayService {
	@Autowired WoHumanPayDao woHumanPayDao;
	@Autowired CategoryThemeDao categoryThemeDao;
	@Autowired PpWorkDao ppWorkDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoHumanPayService.class);
	
	// 수정화면 처리
	public void updateWoHumanPay(WoHumanPay woHumanPay) {
		woHumanPayDao.updateWoHumanPay(woHumanPay);
	}
	
	// 수정화면 조회
	public Map<String, Object> oneSelectWoHumanPay(int eHumanpayNumber, int ppNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		// 테마카테고리, 작업단계조회 와야함
		List<CategoryTheme> categoryThemeList = categoryThemeDao.listSelectCategoryTheme();
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		map.clear();
		map.put("woHumanPay", woHumanPayDao.oneSelectWoHumanPay(eHumanpayNumber));
		map.put("categoryThemeList", categoryThemeList);
		map.put("ppWorkList", ppWorkList);
		return map;
	}
	
	// 삭제처리
	public void deleteWoHumanPay(int eHumanpayNumber) {
		woHumanPayDao.deleteWoHumanPay(eHumanpayNumber);
	}
	
	// 등록처리
	public void insertWoHumanPay(WoHumanPay woHumanPay) {
		woHumanPayDao.insertWoHumanPay(woHumanPay);
	}
	
	/* 검색옵션과 키워드 조건, 작업단계가 매개변수로 들어오고 Map을 생성해 매개변수들을 map으로 묶어 dao로 넘긴다.*/
	public List<WoHumanPay> listSelectWoHumanPay(String searchKeyword, String searchHumanPayOption, int ppWorkNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKeyword", searchKeyword);
		map.put("searchHumanPayOption", searchHumanPayOption);
		map.put("ppWorkNumber", ppWorkNumber);
		return woHumanPayDao.listSelectWoHumanPay(map);
	}
	
	// 예상 인건비 리스트 출력
	public List<WoHumanPay> listSelectWoHumanPay(int ppWorkNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		return woHumanPayDao.listSelectWoHumanPay(map);
	}
	
	// 등록화면
	public Map<String, Object> insertWoHumanPay(int ppNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		List<CategoryTheme> cateTheme = categoryThemeDao.listSelectCategoryTheme();
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		map.clear();
		map.put("cateTheme", cateTheme);
		map.put("ppWorkList", ppWorkList);
		return map;
		
	}
	
}
