//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;

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
	 * @param wrEtcSpendPayDb
	 * @return
	 */
	public int updateWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		LOGGER.debug(NAMESPACE+"updateOneWrEtcSpendPay", wrEtcSpendPayDb);
		return session.update(NAMESPACE+"updateOneWrEtcSpendPay", wrEtcSpendPayDb);
	}
		
	/**
	 * 기타지출비 결과 리스트 중 하나의 레코드 선택 메서드
	 * @param wrEtcspendpayNumber
	 * @return
	 */
	public WrEtcSpendPayDb oneSelectWrEtcSpendPay(int wrEtcspendpayNumber) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		LOGGER.debug(NAMESPACE+"oneSelectWrEtcSpendPay", wrEtcspendpayNumber);
		return session.selectOne(NAMESPACE+"oneSelectWrEtcSpendPay", wrEtcspendpayNumber);
	}
	
	/**
	 * 기타지출비 결과 전체리스트 메서드
	 * @param wrNumber
	 * @return
	 */
	public List<WrEtcSpendPayDb> listSelectWrEtcSpendPay(int wrNumber) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		return session.selectList(NAMESPACE+"listSelectWrEtcSpendPay", wrNumber);
	}
	
	/**
	 * 기타지출비 결과 등록 메서드
	 * @param wrEtcSpendPayDb
	 */
	public void insertWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("WrEtcSpendPayDao 호출");
		session.insert(NAMESPACE+"insertWrEtcSpendPay",wrEtcSpendPayDb);
	}
}