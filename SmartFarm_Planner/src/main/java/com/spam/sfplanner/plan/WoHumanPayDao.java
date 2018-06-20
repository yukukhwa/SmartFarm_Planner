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
	
	/*매개변수로 woHumanPay를 받아 수정할 정보들을 수정처리하는 메서드*/
	public void updateWoHumanPay(WoHumanPay woHumanPay) {
		sqlSession.update(NAMESPACE+"updateWoHumanPay", woHumanPay);
	}
	
	/*매개변수로 인건비넘버를 받아 인건비넘버에 해당하는 하나의 예상인건비 정보를 출력하는 메서드*/
	public WoHumanPay oneSelectWoHumanPay(int eHumanpayNumber) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectWoHumanPay", eHumanpayNumber);
	}
	
	/*매개변수 예상인건비넘버를 받아 예상인건비를 삭제처리하는 메서드*/ 
	public void deleteWoHumanPay(int eHumanpayNumber) {
		sqlSession.delete(NAMESPACE+"deleteWoHumanPay", eHumanpayNumber);
	}
	
	/*예상 인건비에 등록된 정보들을 등록처리하는 메서드*/
	public void insertWoHumanPay(WoHumanPay woHumanPay) {
		sqlSession.insert(NAMESPACE+"insertWoHumanPay", woHumanPay);
	}
	
	/*예상 인건비를 전체조회하는 메서드*/
	public List<WoHumanPay> listSelectWoHumanPay(Map<String, Object> map){
		return sqlSession.selectList(NAMESPACE+"listSelectWoHumanPay", map);
	}
}
