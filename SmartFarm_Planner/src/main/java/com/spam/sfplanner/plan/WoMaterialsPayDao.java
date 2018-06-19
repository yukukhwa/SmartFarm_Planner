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
public class WoMaterialsPayDao {
	@Autowired SqlSessionTemplate sqlSession;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoMaterialsPayDao.class);
	private final static String NAMESPACE = "com.spam.sfplanner.plan.WoMaterialsPayMapper.";
	
	public void updateWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		sqlSession.update(NAMESPACE+"updateWoMaterialsPay", woMaterialsPay);
	}
	
	/*예상 원자재비넘버를 매개변수로 받아 하나의 예상 원자재비 정보들을 출력하는 메서드*/
	public WoMaterialsPay oneSelectWoMaterialsPay(int eMaterialspayNumber) {
		return sqlSession.selectOne(NAMESPACE+"oneSelectWoMaterialsPay", eMaterialspayNumber);
	}
	
	/*예상 원자재비넘버를 매개변수로 받아 해당 넘버의 정보들을 삭제처리하는 메서드*/ 
	public void deleteWoMaterialsPay(int eMaterialspayNumber) {
		sqlSession.delete(NAMESPACE+"deleteWoMaterialsPay", eMaterialspayNumber);
	}
	
	/*예상 원자재비를 등록처리하는 메서드*/
	public void insertWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		sqlSession.insert(NAMESPACE+"insertWoMaterialsPay", woMaterialsPay);
	}
	
	/*예상 원자재비 리스트를 전체 출력하는 메서드*/
	public List<WoMaterialsPay> listSelectWoMaterialsPay(Map<String, Object> map){
		System.out.println("map===> "+map);
		return sqlSession.selectList(NAMESPACE+"listSelectWoMaterialsPay", map);
	}
}
