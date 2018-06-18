//[유국화]
package com.spam.sfplanner.actresult;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WrEtcSpendPayService {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayService.class);
	@Autowired private WrEtcSpendPayDao wrEtcSpendPayDao;
	
	/**
	 * 기타지출비 결과 리스트 중 한 줄의 레코드 선택해서 수정하는 서비스
	 * @param wrEtcSpendPay
	 * @return
	 */
	public int updateWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.debug("input : "+wrEtcSpendPay);	
		LOGGER.debug("return : "+wrEtcSpendPayDao.updateWrEtcSpendPay(wrEtcSpendPay));
		return wrEtcSpendPayDao.updateWrEtcSpendPay(wrEtcSpendPay);
	} 
	
	/**
	 * 기타지출비 결과 리스트 중 한 줄의 레코드 선택하는 서비스
	 * @param wrEtcspendpayNumber
	 * @return
	 */
	public WrEtcSpendPay oneSelectWrEtcSpendPay(int wrEtcspendpayNumber) {
		LOGGER.debug("input : "+wrEtcspendpayNumber);	
		LOGGER.debug("return : "+wrEtcSpendPayDao.oneSelectWrEtcSpendPay(wrEtcspendpayNumber));
		return wrEtcSpendPayDao.oneSelectWrEtcSpendPay(wrEtcspendpayNumber);
	}
		
	/**
	 * 기타지출비 결과 전체리스트 출력 서비스
	 * @param map
	 * @return
	 */
	public List<WrEtcSpendPay> listSelectWrEtcSpendPay(Map<String, Object> map) {
		LOGGER.debug("return : "+wrEtcSpendPayDao.listSelectWrEtcSpendPay(map));
		List<WrEtcSpendPay> list = wrEtcSpendPayDao.listSelectWrEtcSpendPay(map);		
		return list;
	}
	
	/**
	 * 기타지출비 결과 등록 서비스
	 * @param wrEtcSpendPay
	 */
	public void insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.debug("input : "+wrEtcSpendPay);
		wrEtcSpendPayDao.insertWrEtcSpendPay(wrEtcSpendPay);
	}	
}
