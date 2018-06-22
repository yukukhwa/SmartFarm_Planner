//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WrEtcSpendPayDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrEtcSpendPayService.class);
	@Autowired private SqlSessionTemplate sqlsession;
	private final String nameSpace ="com.spam.sfplanner.actresult.WrEtcSpendPayMapper.";
	
	//작업단계결과 리스트 중 하나의 기타지출비결과 선택해서 삭제처리
	public void deleteWrEtcSpendPay(int wrNumber) {
	LOGGER.info("deleteWrEtcSpendPay dao에서 호출");
	sqlsession.delete(nameSpace+"deleteWrEtcSpendPay", wrNumber);
	}
	
	//기타지출비결과 리스트 중 하나의 기타지출비결과 선택해서 삭제처리
	public void oneDeleteWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
	LOGGER.info("oneDeleteWrEtcSpendPay dao에서 호출");
	sqlsession.delete(nameSpace+"oneDeleteWrEtcSpendPay", wrEtcSpendPay);
	}

	//기타지출비결과 수정화면에서 보낸 정보로 수정처리
	public void updateWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
	LOGGER.info("updateWrEtcSpendPay dao에서 호출");
	sqlsession.update(nameSpace+"updateWrEtcSpendPay", wrEtcSpendPay);
	}
	
	//기타지출비결과 리스트 중 하나의 기타지출비결과 선택해서 화면에 뿌려주기 위한 메서드	
	public WrEtcSpendPay oneSelectWrEtcSpendPay(int wrEtcspendpayNumber) {
	LOGGER.info("oneSelectWrEtcSpendPay dao에서 호출");
	return sqlsession.selectOne(nameSpace+"oneSelectWrEtcSpendPay", wrEtcspendpayNumber);
	}
	
	//기타지출비결과 등록
	public void insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("insertWrEtcSpendPay 호출");
		sqlsession.insert(nameSpace+"insertWrEtcSpendPay",wrEtcSpendPay);
	}
	
	//기타지출비결과 전체리스트
	public List<WrEtcSpendPay> listSelectWrEtcSpendPay(Map<String, Object> map) {
		LOGGER.info("listSelectWrEtcSpendPay 호출");
		return sqlsession.selectList(nameSpace+"listSelectWrEtcSpendPay", map);
	}	
}