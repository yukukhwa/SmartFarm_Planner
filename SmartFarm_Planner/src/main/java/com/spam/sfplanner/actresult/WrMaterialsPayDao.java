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
public class WrMaterialsPayDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(WrMaterialsPayDao.class);
	
	final String NS = "com.spam.sfplanner.actresult.WrMaterialsPayMapper.";
	
	/*
	 * 작업단계넘버를 매개변수로 받아 해당하는 원자재비결과를 삭제하는 쿼리문을 실행한 후
	 * 횟수를 리턴받는 매서드
	 */
	public int deleteWrMaterialsPay(int wrNumber) {
		return sqlSession.delete(NS+"deleteWrMaterialsPay", wrNumber);
	}
	/*
	 * WrMaterialsPayDb를 매개변수로 받아 원자재비결과넘버에 해당하는 값들을 수정하는 쿼리문을 실행한 후 
	 * 횟수를 리턴받는 매서드
	 */
	public int updateWrMaterialsPay(WrMaterialsPay wrMaterialsPay) {
		return sqlSession.update(NS+"updateWrMaterialsPay", wrMaterialsPay);
	}
	/*
	 * 원자재비결과넘버를 매개변수로 받아 해당하는 원자재비결과 한개를 출력하는 쿼리문을 실행한 후
	 * WrMaterialsPay type으로 리턴받는 매서드
	 */
	public WrMaterialsPay oneSelectWrMaterialsPay(int wrMaterialspayNumber) {
		return sqlSession.selectOne(NS+"oneSelectWrMaterialsPay", wrMaterialspayNumber);
	}
	/*
	 * Map을 매개변수로 받아 해당하는 원자재비결과를 출력하는 쿼리문을 실행한 후 나온 결과를
	 * 리스트로 리턴받는 매서드
	 */
	public List<WrMaterialsPay> listSelectWrMaterialsPay(Map<String, Object> map) {
		return sqlSession.selectList(NS+"listSelectWrMaterialsPay", map);
	}
	/*
	 * wrMaterialsPayDb를 매개변수로 받아 insert쿼리문을 실행한후 횟수를 리턴하는 매서드
	 */
	public int insertWrMaterialsPay(WrMaterialsPay wrMaterialsPay) {
		return sqlSession.insert(NS+"insertWrMaterialsPay", wrMaterialsPay);
	}
}
