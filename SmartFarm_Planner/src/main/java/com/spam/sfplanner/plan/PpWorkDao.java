/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PpWorkDao {
	@Autowired SqlSessionTemplate sqlSession;
	private final static Logger LOGGER = LoggerFactory.getLogger(PpWorkDao.class);
	private final static String NAMESPACE = "com.spam.sfplanner.plan.PpWorkMapper.";
	
	public void deletePpWork(int ppWorkNumber) {
		sqlSession.delete(NAMESPACE+"deletePpWork", ppWorkNumber);
	}
	
	public void insertPpWork(PpWork ppWork) {
		sqlSession.insert(NAMESPACE+"insertPpWork", ppWork);
	}
	
	public List<PpWork> searchListSelectPpWork(Map<String, Object> map){
		System.out.println("ppWork map : "+map);
		return sqlSession.selectList(NAMESPACE+"listSelectPpWork", map);
	}
	
	public List<PpWork> listSelectPpWork(Map<String, Object> map){
		return sqlSession.selectList(NAMESPACE+"listSelectPpWork", map);
	}
}
