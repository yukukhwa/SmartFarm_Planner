//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PpWoResultService {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private PpWoResultDao ppWoResultDao;
	
	//작업단계 결과 전체리스트 출력 서비스
	public List<PpWoResult> listSelectWorkResult(Map<String, Object> map) {
		LOGGER.info("listSelectWorkResult 서비스에서 호출");
		return ppWoResultDao.listSelectWorkResult(map);
	}
	
	//작업단계 결과 입력 서비스
	public void insertWorkResult(PpWoResult ppWoResult) {
		LOGGER.info("insertWorkResult 서비스에서 호출");
		ppWoResultDao.insertWorkResult(ppWoResult);
	}
}
