//[유국화]
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
	java.util.Date date = new java.util.Date(); 
	java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	/**
	 * 기타지출비 결과 리스트 중 한 줄의 레코드 선택해서 수정하는 서비스
	 * @param wrEtcSpendPayDb
	 * @return
	 */
	public int updateWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.debug("input : "+wrEtcSpendPayDb);	
		LOGGER.debug("return : "+wrEtcSpendPayDao.updateWrEtcSpendPay(wrEtcSpendPayDb));
		return wrEtcSpendPayDao.updateWrEtcSpendPay(wrEtcSpendPayDb);
	} 
	
	/**
	 * 기타지출비 결과 리스트 중 한 줄의 레코드 선택하는 서비스
	 * @param wrEtcspendpayNumber
	 * @return
	 */
	public WrEtcSpendPayDb oneSelectWrEtcSpendPay(int wrEtcspendpayNumber) {
		LOGGER.debug("input : "+wrEtcspendpayNumber);	
		LOGGER.debug("return : "+wrEtcSpendPayDao.oneSelectWrEtcSpendPay(wrEtcspendpayNumber));
		return wrEtcSpendPayDao.oneSelectWrEtcSpendPay(wrEtcspendpayNumber);
	}
		
	/**
	 * 기타지출비 결과 전체리스트 출력 서비스
	 * @param wrNumber
	 * @return
	 */
	public List<WrEtcSpendPayDb> listSelectWrEtcSpendPay(int wrNumber) {
		LOGGER.debug("input : "+wrNumber);
		LOGGER.debug("return : "+wrEtcSpendPayDao.listSelectWrEtcSpendPay(wrNumber));
		List<WrEtcSpendPayDb> list = wrEtcSpendPayDao.listSelectWrEtcSpendPay(wrNumber);
		
		return list;
	}
	
	/**
	 * 기타지출비 결과 등록 서비스
	 * @param wrEtcSpendPayDb
	 */
	public void insertWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.debug("input : "+wrEtcSpendPayDb);
		
		wrEtcSpendPayDb.setWrEtcspendpayDate(sdf.format(date));
		wrEtcSpendPayDao.insertWrEtcSpendPay(wrEtcSpendPayDb);
	}	
}
