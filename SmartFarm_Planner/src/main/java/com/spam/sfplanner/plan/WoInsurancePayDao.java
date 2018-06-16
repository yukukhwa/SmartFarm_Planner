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
	
	public void addInsurancepay(WoInsurancePay woInsurancePay) {
		sqlSessionTemplate.insert(NAMESPACE+"addInsurancepay",woInsurancePay);
	}
	
	public List<WoInsurancePay> listSelectWoInsurancePay(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectWoInsurancePay", map);
	}
}
