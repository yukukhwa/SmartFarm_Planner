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
	/*
	 * ppResultlistNumber를 매개변수로 받아 해당하는 실행결과리스트를 삭제하는 쿼리문을 실행한 후
	 * 나온 결과를 리턴받는 매서드
	 */
	public int deleteActResult(int ppResultlistNumber) {
		return sqlSession.delete(NS+"deleteActResult", ppResultlistNumber);
	}
	/*
	 * map을 매개변수로 받아 해당하는 실행결과리스트 한개를 ActResult로 리턴받는 매서드
	 */
	public ActResult oneSelectActResult(Map<String, Object> map) {
		return sqlSession.selectOne(NS+"oneSelectActResult", map);
	}
	/*
	 * map을 매개변수로 받아 조건에 맞는 리스트 개수를 새는 쿼리문을 실행한 후
	 * 결과를 리턴하는 매서드
	 */
	public int countActResult(Map<String, Object> map) {
		return sqlSession.selectOne(NS+"countActResult", map);
	}
	/*
	 * map을 매개변수로 받아 해당하는 실행결과를 호출하는 쿼리문을 실행한 후
	 * 나온 결과 리스트를 리턴하는 매서드
	 */
	public List<ActResult> listSelectActResult(Map<String, Object> map) {
		return sqlSession.selectList(NS+"listSelectActResult", map);
	}
	/*
	 * actResult를 매개변수로 받아 insert쿼리문을 실행시키고 나온 결과를 리턴하는 매서드
	 */
	public int insertActResult(ActResult actResult) {
		return sqlSession.insert(NS+"insertActResult", actResult);
	}

}
