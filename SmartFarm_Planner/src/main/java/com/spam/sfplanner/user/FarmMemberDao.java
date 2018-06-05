package com.spam.sfplanner.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spam.sfplanner.corporation.FarmDao;

@Repository
public class FarmMemberDao {
	@Autowired SqlSessionTemplate sqlSession;
	private final static Logger LOGGER = LoggerFactory.getLogger(FarmDao.class);
	private final String NAMESPACE = "com.spam.sfplanner.corporation.FarmMemberMapper.";

	public void insertFarmMember(FarmMemberView farmMemberView) {
		LOGGER.info("FarmMemberDao 호출");
		sqlSession.insert(NAMESPACE+"insertFarmMember", farmMemberView);
	}
}
