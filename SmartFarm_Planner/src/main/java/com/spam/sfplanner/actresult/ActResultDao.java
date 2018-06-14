/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ActResultDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultDao.class);
	
	final String NS = "com.spam.sfplanner.actresult.ActResultMapper.";
	
	public List<ActResultDb> listSelectActResult(Map<String, Object> map) {
		return sqlSession.selectList(NS+"listSelectActResult", map);
	}
	
	public int insertActResult(ActResultDb actResultDb) {
		return sqlSession.insert(NS+"insertActResult", actResultDb);
	}

}
