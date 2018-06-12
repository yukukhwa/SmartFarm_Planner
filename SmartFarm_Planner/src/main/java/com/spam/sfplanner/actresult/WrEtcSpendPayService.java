package com.spam.sfplanner.actresult;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WrEtcSpendPayService {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayService.class);
	@Autowired private WrEtcSpendPayDao wrEtcSpendPayDao;
	
	//기타지출비용 전체리스트
	public List<WrEtcSpendPayDb> selectListWrEtcSpendPay(int wrNumber) {
		LOGGER.info("selectListWrEtcSpendPay Dao 호출");				
		return wrEtcSpendPayDao.selectListWrEtcSpendPay(wrNumber);
	}
	
	//기타지출비용 등록처리
	public void insertWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("insertWrEtcSpendPay 호출");				
		wrEtcSpendPayDao.insertWrEtcSpendPay(wrEtcSpendPayDb);
	}	
}
