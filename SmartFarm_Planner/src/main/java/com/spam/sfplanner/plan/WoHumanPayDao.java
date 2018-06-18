package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoHumanPayDao {
	@Autowired private SqlSessionTemplate sqlSession;
	final static String NAMESPACE = "com.spam.sfplanner.plan.WoHumanPayMapper.";
	final static Logger LOGGER = LoggerFactory.getLogger(WoHumanPayDao.class);
	
	public void insertPpWork(WoHumanPay woHumanPay) {
		sqlSession.insert(NAMESPACE+"insertWoHumanPay", woHumanPay);
	}
	
	public List<WoHumanPay> listSelectWoHumanPay(Map<String, Object> map){
		return sqlSession.selectList(NAMESPACE+"listSelectWoHumanPay", map);
	}
}
