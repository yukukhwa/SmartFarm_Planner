package com.spam.sfplanner.plan;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoHumanPayDao {
	@Autowired private SqlSessionTemplate sqlSession;
	final static String NAMESPACE = "com.spam.sfplanner.plan.WoHumanPayMapper.";
	
	public List<WoHumanPayDb> listSelectWoHumanPay(){
		return sqlSession.selectList(NAMESPACE+"listSelectWoHumanPay");
	}
}
