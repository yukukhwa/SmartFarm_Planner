/*나성수*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TitlePlanDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NAMESPACE = "com.spam.sfplanner.plan.TitlePlanMapper.";
	
	/**
	 * 계획명 수정 처리 Dao
	 * @param 계획명 수정 화면에서 받아온 데이터
	 */
	public void updateTitlePlan(TitlePlanDb titlePlanDb) {
		sqlSessionTemplate.update(NAMESPACE+"updateTitlePlan", titlePlanDb);
	}
	
	/**
	 * 계획명 수정 화면 출력 처리 Dao
	 * @param 계획명 넘버
	 * @return 계획명 수정 화면
	 */
	public TitlePlanDb updateTitlePlan(int ppNameNumber) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"oneSelectTitlePlan", ppNameNumber);
	}
	
	/**
	 * 계획명 삭제 처리 Dao
	 * @param 계획명 넘버
	 */
	public void deleteTitlePlan(int ppNameNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteTitlePlan", ppNameNumber);
	}
	
	/**
	 * 계획명 리스트 출력 처리 Dao
	 * @param 검색 조건(search,column,property)
	 * @return 계획명 리스트
	 */
	public List<TitlePlanDb> listSelectTitlePlan(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectTitlePlan",map);
	}
	
	/**
	 * 계획명 등록 처리 Dao
	 * @param 등록농가넘버,품목넘버,계획명
	 */
	public void insertTitlePlan(Map<String,Object> map) {
		sqlSessionTemplate.insert(NAMESPACE+"insertTitlePlan", map);
	}
}
