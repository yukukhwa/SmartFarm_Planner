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
public class PpWoResultDao { //작업단계결과 Dao
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private SqlSessionTemplate sqlsession;
	private final String nameSpace = "com.spam.sfplanner.actresult.PpWoResultMapper.";
	
	//실행결과리스트 넘버로 작업단계결과 삭제처리
	public void deleteWorkResult(int ppResultlistNumber) {
	LOGGER.info("deleteWorkResult dao에서 호출");
	sqlsession.delete(nameSpace+"deleteWorkResult", ppResultlistNumber);
	}
	
	//작업단계결과 리스트 중 하나의 작업단계결과 선택해서 삭제처리
	public void oneDeleteWorkResult(PpWoResult ppWoResult) {
	LOGGER.info("oneDeleteWorkResult dao에서 호출");
	sqlsession.delete(nameSpace+"oneDeleteWorkResult", ppWoResult);
	}

	//작업단계결과 수정화면에서 보낸 정보로 수정처리
	public void updateWorkResult(PpWoResult ppWoResult) {
	LOGGER.info("updateWorkResult dao에서 호출");
	sqlsession.update(nameSpace+"updateWorkResult", ppWoResult);
	}
	
	//작업단계결과 리스트 중 하나의 작업단계결과 선택해서 화면에 뿌려주기 위한 메서드
	//선택한 작업단계결과를 리턴
	public PpWoResult oneSelectWorkResult(int wrNumber) {
		LOGGER.info("oneSelectWorkResult dao에서 호출");
		return sqlsession.selectOne(nameSpace+"oneSelectWorkResult", wrNumber);
	}
	
	//작업단계결과 등록
	public void insertWorkResult(PpWoResult ppWoResult) {
		LOGGER.info("insertWorkResult dao에서 호출");
		sqlsession.insert(nameSpace+"insertWorkResult", ppWoResult);
	}
	
	//실행결과리스트 넘버별 작업단계결과 리스트
	public List<PpWoResult> listSelectWorkResult(Map<String, Object> map) {
		LOGGER.info("listSelectWorkResult dao에서 호출");			
		return sqlsession.selectList(nameSpace+"listSelectWorkResult", map);
	}
	
	//작업단계결과 전체리스트
	public List<PpWoResult> listAllSelectWorkResult() {
		LOGGER.info("listAllSelectWorkResult dao에서 호출");			
		return sqlsession.selectList(nameSpace+"listAllSelectWorkResult");
	}	
}