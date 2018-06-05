package com.spam.sfplanner.corporation;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spam.sfplanner.user.FarmMemberView;

@Repository
public class FarmDao {
	@Autowired SqlSessionTemplate sqlSession;
	
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmDao.class);
	private static final String NAMESPACE = "com.spam.sfplanner.corporation.FarmMapper.";
	
	public void insertFarm(FarmMemberView farmMemberView) {
		LOGGER.info("FarmDao 호출");
		sqlSession.insert(NAMESPACE+"insertFarm", farmMemberView);
	}
}
