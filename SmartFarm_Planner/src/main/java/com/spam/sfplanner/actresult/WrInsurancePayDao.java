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
public class WrInsurancePayDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private SqlSessionTemplate sqlsession;
	private final String nameSpace ="com.spam.sfplanner.actresult.WrInsurancePayMapper.";
	
	//보험비 결과 등록
	public void insertWrInsurancePay(WrInsurancePay wrInsurancePay) {
		LOGGER.info("insertWrInsurancePay 호출");
		sqlsession.insert(nameSpace+"insertWrInsurancePay",wrInsurancePay);
	}
	
	//보험비 결과 전체리스트
	public List<WrInsurancePay> listSelectWrInsurancePay(Map<String, Object> map) {
		LOGGER.info("listSelectWrInsurancePay 호출");
		return sqlsession.selectList(nameSpace+"listSelectWrInsurancePay", map);
	}
}
