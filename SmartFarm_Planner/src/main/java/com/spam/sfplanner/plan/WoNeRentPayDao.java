/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoNeRentPayDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final static String NAMESPACE = "com.spam.sfplanner.plan.WoNeRentPayMapper.";
	
	public void updateWoNeRentPay(WoNeRentPay woNeRnetPay) {
		sqlSession.update(NAMESPACE+"updateWoNeRentPay", woNeRnetPay);
	}
	
	public WoNeRentPay oneSelectWoNeRentPay(int neERentpayNumber) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectWoNeRentPay", neERentpayNumber);
	}
	
	public void deleteWoNeRentPay(int neERentpayNumber) {
		sqlSession.delete(NAMESPACE+"deleteWoNeRentPay", neERentpayNumber);
	}
	
	public List<WoNeRentPay> listSelectWoNeRentPay(Map<String, Object> map){
		return sqlSession.selectList(NAMESPACE+"listSelectWoNeRentPay", map);
	}
	
	public void insertWoNeRentPay(WoNeRentPay woNeRentPay) {
		sqlSession.insert(NAMESPACE+"insertWoNeRentPay", woNeRentPay);
	}

}
