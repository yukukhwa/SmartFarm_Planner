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
	
	//기타지출비 결과 전체리스트 출력 서비스
	public List<WrEtcSpendPay> listSelectWrEtcSpendPay(Map<String, Object> map) {
		LOGGER.info("listSelectWrEtcSpendPay 호출");
		return wrEtcSpendPayDao.listSelectWrEtcSpendPay(map);
	}
	
	//기타지출비 결과 등록 서비스
	public void insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("insertWrEtcSpendPay 호출");
		wrEtcSpendPayDao.insertWrEtcSpendPay(wrEtcSpendPay);
	}	
}
