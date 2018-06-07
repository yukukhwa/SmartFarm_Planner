/*[김재희]*/
package com.spam.sfplanner.corporation;

import java.util.List;

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
	
	public FarmDb oneSelectFarm(FarmDb farmDb) {
		LOGGER.info("FarmDao oneSelectFarm 호출");
		return sqlSession.selectOne(NAMESPACE+"oneSelectFarm", farmDb.getfNumber());
	}
	
	public List<FarmDb> listSelectFarm() {
		LOGGER.info("FarmDao listSelectFarm 호출");
		return sqlSession.selectList(NAMESPACE+"listSelectFarm");
	}
	
	public void insertFarm(FarmMemberView farmMemberView) {
		LOGGER.info("FarmDao insertFarm 호출");
		sqlSession.insert(NAMESPACE+"insertFarm", farmMemberView);
	}
}
