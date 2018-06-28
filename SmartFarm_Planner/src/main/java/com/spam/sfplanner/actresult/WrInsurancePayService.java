//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Service
public class WrInsurancePayService {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private WrInsurancePayDao wrInsurancePayDao;
	
	//보험비결과 등록화면에서 보낸 정보 입력처리
	@RequestMapping(value="/addWrInsurancePay", method=RequestMethod.POST)
	public void insertWrInsurancePay(WrInsurancePay wrInsurancePay) {
		LOGGER.info("insertWrInsurancePay post 호출");		
		wrInsurancePayDao.insertWrInsurancePay(wrInsurancePay);
	}

	//보험비 결과 전체리스트 출력 서비스
	public List<WrInsurancePay> listSelectWrInsurancePay(Map<String, Object> map) {
		LOGGER.info("listSelectWrInsurancePay 호출");
		return wrInsurancePayDao.listSelectWrInsurancePay(map);
	}
}
