/*나성수*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoInsurancePayDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NAMESPACE = "com.spam.sfplanner.plan.WoInsurancePayMapper.";
	
	/**
	 * 예상 보험비 수정 처리 Dao
	 * @param woInsurancePay
	 */
	public void updateInsurancepay(WoInsurancePay woInsurancePay) {
		sqlSessionTemplate.update(NAMESPACE+"updateWoInsurancePay", woInsurancePay);
	}
	
	/**
	 * 예상 보험비 수정 화면 출력 Dao
	 * @param map
	 * @return 예상 보험비 수정화면
	 */
	public WoInsurancePay updateInsurancepay(Map<String,Object> map) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"listSelectWoInsurancePay", map);
	}
	
	/**
	 * 예상 보험비 삭제 처리 Dao
	 * @param eInsurancepayNumber
	 */
	public void deleteWoInsurancePay(int eInsurancepayNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteWoInsurancePay", eInsurancepayNumber);
	}
	
	/**
	 * 예상 보험비 등록 처리 Dao
	 * @param woInsurancePay
	 */
	public void insertWoInsurancePay(WoInsurancePay woInsurancePay) {
		sqlSessionTemplate.insert(NAMESPACE+"insertWoInsurancePay",woInsurancePay);
	}
	
	/**
	 * 예상 보험비 리스트 출력 Dao
	 * @param map
	 * @return 예상 보험비 리스트
	 */
	public List<WoInsurancePay> listSelectWoInsurancePay(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectWoInsurancePay", map);
	}
}
