/*나성수*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryItemDao;
import com.spam.sfplanner.category.CategoryItem;
import com.spam.sfplanner.login.Login;

@Transactional
@Service
public class TitlePlanService {

	@Autowired
	private TitlePlanDao titlePlanDao;
	
	@Autowired
	private CategoryItemDao categoryItemDao;
	
	/**
	 * 계획명 수정 처리 서비스
	 * @param 계획명 수정 화면에서 받아온 데이터
	 */
	public void updateTitlePlan(TitlePlan titlePlan) {
		titlePlanDao.updateTitlePlan(titlePlan);
	}
	
	/**
	 * 계획명 수정 화면 출력 처리 서비스
	 * @param 계획명 넘버
	 * @return 계획명 수정 화면
	 */
	public Map<String,Object> updateTitlePlan(int ppNameNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list", categoryItemDao.listSelectCategoryItem());
		map.put("title", titlePlanDao.updateTitlePlan(ppNameNumber));
		return map;
	}
	
	/**
	 * 계획명 삭제 처리 서비스
	 * @param 게획서 넘버
	 */
	public void deleteTitlePlan(int ppNameNumber) {
		titlePlanDao.deleteTitlePlan(ppNameNumber);
	}
	
	/**
	 * 검색 조건에 따른 계획명 리스트 처리 서비스
	 * @param 검색범위
	 * @param 검색어
	 * @return 계획명 리스트
	 */
	public List<TitlePlan> listSelectTitlePlan(String column,String property) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		return titlePlanDao.listSelectTitlePlan(map);
	}
	
	/**
	 * 계획명 리스트 처리 서비스
	 * @return 계획명 리스트
	 */
	public List<TitlePlan> listSelectTitlePlan() {
		Map<String, Object> map = null;
		return titlePlanDao.listSelectTitlePlan(map);
	}
	
	/**
	 * 계획명 등록 처리 서비스
	 * @param 품목넘버,계획명
	 * @param 농가 넘버
	 */
	public void insertTitlePlan(TitlePlan titlePlan,HttpSession session) {
		titlePlan.getFarmDb().setfNumber(((Login)session.getAttribute("loginMember")).getCorpNumber());
		titlePlanDao.insertTitlePlan(titlePlan);
	}
	
	/**
	 * 계획명 등록 화면 출력 서비스
	 * @return 품목카테고리 리스트
	 */
	public List<CategoryItem> insertTitlePlan() {
		return categoryItemDao.listSelectCategoryItem();
	}
}
