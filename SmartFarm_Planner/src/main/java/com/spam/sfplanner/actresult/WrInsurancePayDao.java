package com.spam.sfplanner.actresult;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WrInsurancePayDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private SqlSessionTemplate session;
	final String nameSpace ="com.spam.sfplanner.actresult.WrInsurancePayMapper.";
	
	/**
	 * 보험비 결과 전체리스트 메서드
	 * @param map
	 * @return
	 */
	public List<WrEtcSpendPay> listSelectWrEtcSpendPay(Map<String, Object> map) {
		LOGGER.info("WrInsurancePayDao 호출");
		return session.selectList(nameSpace+"listSelectWrInsurancePay", map);
	}
}
