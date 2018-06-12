// [유국화]
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
	
	//기타지출비용 전체리스트 메서드
	public List<WrEtcSpendPayDb> selectListWrEtcSpendPay(int wrNumber) {
		LOGGER.info("selectListWrEtcSpendPay sql호출");
		
		return session.selectList(NAMESPACE+"selectListWrEtcSpendPay", wrNumber);
	}
	
	//기타지출비용 등록 처리 메서드
	public void insertWrEtcSpendPay(WrEtcSpendPayDb wrEtcSpendPayDb) {
		LOGGER.info("insertWrEtcSpendPay 호출");
		session.insert(NAMESPACE+"insertWrEtcSpendPay",wrEtcSpendPayDb);
	}
}
