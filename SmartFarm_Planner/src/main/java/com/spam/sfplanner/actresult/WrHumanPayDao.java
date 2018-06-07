package com.spam.sfplanner.actresult;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WrHumanPayDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(WrHumanPayDao.class);
	
	final String NS = "com.spam.sfplanner.actresult.WrHumanPayMapper.";
	
	public int insertWrHumanPay(WrHumanPayDb wrHumanPayDb) {
		return sqlSession.insert(NS+"insertWrHumanPay", wrHumanPayDb);
	}
	
}
