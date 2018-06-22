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
	
	//작업단계 결과 리스트 중 하나의 보험비 결과 선택해서 삭제처리
	public void deleteWrInsurancePay(int wrNumber) {
	LOGGER.info("deleteWrInsurancePay dao에서 호출");
	sqlsession.delete(nameSpace+"deleteWrInsurancePay", wrNumber);
	}
	
	//작업단계 결과 리스트 중 하나의 보험비 결과 선택해서 삭제처리
	public void oneDeleteWrInsurancePay(WrInsurancePay wrInsurancePay) {
	LOGGER.info("deleteWrIoneDeleteWrInsurancePaynsurancePay dao에서 호출");
	sqlsession.delete(nameSpace+"oneDeleteWrInsurancePay", wrInsurancePay);
	}

	//보험비 결과 수정화면에서 보낸 정보로 수정처리
	public void updateWrInsurancePay(WrInsurancePay wrInsurancePay) {
	LOGGER.info("updateWrInsurancePay dao에서 호출");
	sqlsession.update(nameSpace+"updateWrInsurancePay", wrInsurancePay);
	}
	
	//보험비 결과 리스트 중 하나의 보험비 결과 선택해서 화면에 뿌려주기 위한 메서드	
	public WrInsurancePay oneSelectWrInsurancePay(int wrWrInsurancePayNumber) {
	LOGGER.info("oneSelectWrInsurancePay dao에서 호출");
	return sqlsession.selectOne(nameSpace+"oneSelectWrInsurancePay", wrWrInsurancePayNumber);
	}
	
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
