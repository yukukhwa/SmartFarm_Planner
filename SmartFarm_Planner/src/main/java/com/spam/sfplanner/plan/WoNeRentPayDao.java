/*배건혜*/
package com.spam.sfplanner.plan;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoNeRentPayDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final static String NAMESPACE = "com.spam.sfplanner.plan.NeRentPayMapper.";
	
	public void insertWoNeRentPay(WoNeRentPay woNeRentPay) {
		sqlSession.insert(NAMESPACE+"insertWoNeRentPay", woNeRentPay);
	}

}
