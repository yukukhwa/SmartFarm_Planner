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
	@Autowired private SqlSessionTemplate session;
	final String NAMESPACE ="com.spam.sfplanner.actresult.WrEtcSpendPayMapper.";
	
	/**
	 * 기타지출비 결과 하나의 레코드 선택 후 수정 메서드
	 * @param wrEtcSpendPay
	 * @return
	 */
	public int updateWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		LOGGER.debug(NAMESPACE+"updateOneWrEtcSpendPay", wrEtcSpendPay);
		return session.update(NAMESPACE+"updateOneWrEtcSpendPay", wrEtcSpendPay);
	}
		
	/**
	 * 기타지출비 결과 리스트 중 하나의 레코드 선택 메서드
	 * @param wrEtcspendpayNumber
	 * @return
	 */
	public WrEtcSpendPay oneSelectWrEtcSpendPay(int wrEtcspendpayNumber) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		LOGGER.debug(NAMESPACE+"oneSelectWrEtcSpendPay", wrEtcspendpayNumber);
		return session.selectOne(NAMESPACE+"oneSelectWrEtcSpendPay", wrEtcspendpayNumber);
	}
	
	/**
	 * 기타지출비 결과 전체리스트 메서드
	 * @param map
	 * @return
	 */
	public List<WrEtcSpendPay> listSelectWrEtcSpendPay(Map<String, Object> map) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		LOGGER.debug("리턴값 : "+session.selectList(NAMESPACE+"listSelectWrEtcSpendPay", map));
		return session.selectList(NAMESPACE+"listSelectWrEtcSpendPay", map);
	}
	
	/**
	 * 기타지출비 결과 등록 메서드
	 * @param wrEtcSpendPay
	 */
	public void insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		session.insert(NAMESPACE+"insertWrEtcSpendPay",wrEtcSpendPay);
	}
}