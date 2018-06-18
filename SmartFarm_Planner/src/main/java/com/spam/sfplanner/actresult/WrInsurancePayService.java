package com.spam.sfplanner.actresult;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WrInsurancePayService {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private WrInsurancePayDao wrInsurancePayDao;
	
	/**
	 * 보험비 결과 전체리스트 메서드
	 * @param map
	 * @return
	 */
	public List<WrEtcSpendPay> WrInsurancePayService(Map<String, Object> map) {
		LOGGER.info("WrInsurancePayService 호출");
		return wrInsurancePayDao.listSelectWrEtcSpendPay(map);
	}
}
