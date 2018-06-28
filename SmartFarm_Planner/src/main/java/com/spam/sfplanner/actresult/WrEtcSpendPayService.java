//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WrEtcSpendPayService { //기타지출비결과 서비스
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayService.class);
	@Autowired private WrEtcSpendPayDao wrEtcSpendPayDao;
	
	//작업단계결과 넘버로 기타지출비결과 삭제처리
	public void deleteWrEtcSpendPay(int wrNumber) {
		LOGGER.info("deleteWrEtcSpendPay 서비스 호출");
		wrEtcSpendPayDao.deleteWrEtcSpendPay(wrNumber);
	}
	
	//기타지출비결과 리스트 중 하나의 기타지출비결과 선택해서 삭제처리
	public void oneDeleteWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("oneDeleteWrEtcSpendPay 서비스 호출");
		wrEtcSpendPayDao.oneDeleteWrEtcSpendPay(wrEtcSpendPay);
	}

	//기타지출비결과 수정화면에서 보낸 정보로 수정처리
	public void updateWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("updateWrEtcSpendPay 서비스 호출");
		wrEtcSpendPayDao.updateWrEtcSpendPay(wrEtcSpendPay);
	}
	
	//기타지출비결과 리스트 중 하나의 기타지출비결과 선택해서 화면에 뿌려주기 위한 메서드	
	public WrEtcSpendPay oneSelectWrEtcSpendPay(int wrEtcspendpayNumber) {
		LOGGER.info("oneSelectWrEtcSpendPay 서비스 호출");
		return wrEtcSpendPayDao.oneSelectWrEtcSpendPay(wrEtcspendpayNumber);
	}
	
	//기타지출비결과 등록
	public void insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("insertWrEtcSpendPay 호출");
		wrEtcSpendPayDao.insertWrEtcSpendPay(wrEtcSpendPay);
	}	
	
	//작업단계결과 넘버별 기타지출비결과 리스트
	public List<WrEtcSpendPay> listSelectWrEtcSpendPay(Map<String, Object> map) {
		LOGGER.info("listSelectWrEtcSpendPay 호출");
		return wrEtcSpendPayDao.listSelectWrEtcSpendPay(map);
	}
	
	//기타지출비결과 전체리스트
	public List<WrEtcSpendPay> listAllSelectWrEtcSpendPay() {
		LOGGER.info("listSelectWrEtcSpendPay 호출");
		return wrEtcSpendPayDao.listAllSelectWrEtcSpendPay();
	}
}
