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
	
	//기타지출비 결과 리스트 중 한 줄의 레코드 선택해서 수정하는 서비스
	public int updateWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("updateOneWrEtcSpendPay Dao 호출");
		return wrEtcSpendPayDao.updateWrEtcSpendPay(wrEtcSpendPayDb);
	} 
	
	//기타지출비 결과 리스트 중 한 줄의 레코드 선택하는 서비스
	public WrEtcSpendPayDb selectOneWrEtcSpendPay(int wrEtcspendpayNumber) {
		LOGGER.info("selectOneWrEtcSpendPay Dao 호출");				
		return wrEtcSpendPayDao.selectOneWrEtcSpendPay(wrEtcspendpayNumber);
	}
		
	//기타지출비 결과 전체리스트 출력 서비스
	public List<WrEtcSpendPayDb> selectListWrEtcSpendPay(int wrNumber) {
		LOGGER.info("selectListWrEtcSpendPay Dao 호출");				
		return wrEtcSpendPayDao.selectListWrEtcSpendPay(wrNumber);
	}
	
	//기타지출비 결과 등록 서비스
	public void insertWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("insertWrEtcSpendPay 호출");				
		wrEtcSpendPayDao.insertWrEtcSpendPay(wrEtcSpendPayDb);
	}	
}
