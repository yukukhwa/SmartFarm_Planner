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
	
	//기타지출비 결과 등록
	public void insertWrEtcSpendPay(WrEtcSpendPay wrEtcSpendPay) {
		LOGGER.info("insertWrEtcSpendPay 호출");
		sqlsession.insert(nameSpace+"insertWrEtcSpendPay",wrEtcSpendPay);
	}
	
	//기타지출비 결과 전체리스트
	public List<WrEtcSpendPay> listSelectWrEtcSpendPay(Map<String, Object> map) {
		LOGGER.info("listSelectWrEtcSpendPay 호출");
		return sqlsession.selectList(nameSpace+"listSelectWrEtcSpendPay", map);
	}	
}