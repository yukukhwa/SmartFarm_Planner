package com.spam.sfplanner.actresult;

import java.util.List;

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
	/*
	 * wrHumanpayNumber를 매개변수로 받아 그 데이터를 삭제하는 쿼리문을 실행한 후
	 * 실행횟수를 리턴받는 매서드
	 */
	public int deleteWrHumanPay(int wrHumanpayNumber) {
		return sqlSession.delete(NS+"deleteWrHumanPay", wrHumanpayNumber);
	}
	/*
	 * wrHumanPayDb를 매개변수로 받아 그 데이터로 수정하는 쿼리문을 실행한 후
	 * 실행횟수를 리턴받는 매서드
	 */
	public int updateWrHumanPay(WrHumanPayDb wrHumanPayDb) {
		return sqlSession.update(NS+"updateWrHumanPay", wrHumanPayDb);
	}
	/*
	 * wrHumanpayNumber를 매개변수로 받아 해당하는 인건비 목록 한개만 출력하는 쿼리문을 실행하여
	 * 그 인건비를 리턴받는 매서드
	 */
	public WrHumanPayDb oneSelectWrHumanPay(int wrHumanpayNumber) {
		return sqlSession.selectOne(NS+"oneSelectWrHumanPay", wrHumanpayNumber);
	}
	/*
	 * wrNumber를 매개변수로 받아 작업단계별 인건비 목록을 출력하는 쿼리문을 실행하여
	 * 그 리스트를 리턴받는 매서드
	 */
	public List<WrHumanPayDb> listSelectWrHumanPay(int wrNumber) {
		return sqlSession.selectList(NS+"listSelectWrHumanPay", wrNumber);
	}
	/*
	 * wrHumanPayDb를 매개변수로 받아 인건비를 등록하는 쿼리문을 실행한 후
	 * 실행횟수를 리턴받는 매서드
	 */
	public int insertWrHumanPay(WrHumanPayDb wrHumanPayDb) {
		return sqlSession.insert(NS+"insertWrHumanPay", wrHumanPayDb);
	}
	
}
