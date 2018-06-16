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
	
	public void updateInsurancepay(WoInsurancePay woInsurancePay) {
		sqlSessionTemplate.update(NAMESPACE+"updateWoInsurancePay", woInsurancePay);
	}
	
	public WoInsurancePay updateInsurancepay(Map<String,Object> map) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"listSelectWoInsurancePay", map);
	}
	
	public void deleteWoInsurancePay(int eInsurancepayNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteWoInsurancePay", eInsurancepayNumber);
	}
	
	public void insertWoInsurancePay(WoInsurancePay woInsurancePay) {
		sqlSessionTemplate.insert(NAMESPACE+"insertWoInsurancePay",woInsurancePay);
	}
	
	public List<WoInsurancePay> listSelectWoInsurancePay(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectWoInsurancePay", map);
	}
}
