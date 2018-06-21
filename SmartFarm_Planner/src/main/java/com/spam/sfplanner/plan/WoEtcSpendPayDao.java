/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoEtcSpendPayDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final static String NAMESPACE = "com.spam.sfplanner.plan.WoEtcSpendPayMapper.";
	
	public List<WoEtcSpendPay> listSelectWoEtcSpendPay(Map<String, Object> map){
		return sqlSession.selectList(NAMESPACE+"listSelectWoEtcSpendPay", map);
	}
	
	public void insertWoEtcSpendPay(WoEtcSpendPay woEtcSpendPay) {
		sqlSession.insert(NAMESPACE+"insertWoEtcSpendPay", woEtcSpendPay);
	}
}
