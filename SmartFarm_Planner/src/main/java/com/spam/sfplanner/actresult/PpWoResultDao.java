//[유국화]
package com.spam.sfplanner.actresult;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PpWoResultDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private SqlSessionTemplate sqlsession;
	private final String nameSpace = "com.spam.sfplanner.actresult.PpWoResultMapper.";
	
	/**
	 * 작업단계 결과 전체리스트 메서드
	 * @return
	 */
	public List<PpWoResult> listSelectWorkResult() {
		return sqlsession.selectList(nameSpace+"listSelectWorkResult");
	}
	
	/**
	 * 작업단계 결과 입력 메서드
	 * @return
	 */
	public void insertWorkResult(PpWoResult ppWoResult) {
		sqlsession.insert(nameSpace+"insertWorkResult", ppWoResult);
	}
}
