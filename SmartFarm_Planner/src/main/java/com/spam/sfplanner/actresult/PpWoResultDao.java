//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

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
	
	//작업단계 결과 전체리스트
	public List<PpWoResult> listSelectWorkResult(Map<String, Object> map) {
		LOGGER.info("listSelectWorkResult dao에서 호출");			
		return sqlsession.selectList(nameSpace+"listSelectWorkResult", map);
	}	
	
	//작업단계 결과 입력	
	public void insertWorkResult(PpWoResult ppWoResult) {
		LOGGER.info("insertWorkResult dao에서 호출");
		sqlsession.insert(nameSpace+"insertWorkResult", ppWoResult);
	}
}
