//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class PpWoResultService { //작업단계결과 서비스
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private PpWoResultDao ppWoResultDao;
	
	//실행결과리스트 넘버로 작업단계결과 삭제처리
	public void deleteWorkResult(int ppResultlistNumber) {
	LOGGER.info("deleteWorkResult 서비스 호출");
	ppWoResultDao.deleteWorkResult(ppResultlistNumber);
	}
	
	//작업단계결과 리스트 중 하나의 작업단계결과 선택해서 삭제처리
	public void oneDeleteWorkResult(PpWoResult ppWoResult) {
	LOGGER.info("oneDeleteWorkResult 서비스 호출");
	ppWoResultDao.oneDeleteWorkResult(ppWoResult);
	}

	//작업단계결과 수정화면에서 보낸 정보로 수정처리
	public void updateWorkResult(PpWoResult ppWoResult) {
	LOGGER.info("updateWorkResult 서비스 호출");
	ppWoResultDao.updateWorkResult(ppWoResult);
	}
	
	//작업단계결과 리스트 중 하나의 작업단계결과 선택해서 화면에 뿌려주기 위한 메서드	
	public PpWoResult oneSelectWorkResult(int wrNumber) {
	LOGGER.info("oneSelectWorkResult 서비스 호출");
	return ppWoResultDao.oneSelectWorkResult(wrNumber);
	}
	
	//작업단계결과 등록
	public void insertWorkResult(PpWoResult ppWoResult) {
	LOGGER.info("insertWorkResult 서비스호출");
	ppWoResultDao.insertWorkResult(ppWoResult);
	}
	
	//실행결과리스트 넘버별 작업단계결과 리스트
	public List<PpWoResult> listSelectWorkResult(Map<String, Object> map) {
	LOGGER.info("listSelectWorkResult 서비스 호출");			
	return ppWoResultDao.listSelectWorkResult(map);
	}
	
	//작업단계결과 전체리스트
	public List<PpWoResult> listAllSelectWorkResult() {
	LOGGER.info("listAllSelectWorkResult 서비스 호출");			
	return ppWoResultDao.listAllSelectWorkResult();
	}
}