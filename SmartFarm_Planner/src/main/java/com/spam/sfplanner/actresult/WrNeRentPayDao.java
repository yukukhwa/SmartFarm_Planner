//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WrNeRentPayDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrNeedEquipDao.class);
	@Autowired private SqlSessionTemplate sqlsession;
	private final String nameSpace = "com.spam.sfplanner.actresult.WrNeRentPayMapper.";
	
	//대여비결과 리스트 중 하나의 대여비결과 선택해서 삭제처리
	public void deleteWrNeRentPay(WrNeRentPay wrNeRentPay) {
	LOGGER.info("deleteWrNeRentPay dao에서 호출");
	sqlsession.delete(nameSpace+"deleteWrNeRentPay", wrNeRentPay);
	}

	//대여비결과 수정화면에서 보낸 정보로 수정처리
	public void updateWrNeRentPay(WrNeRentPay wrNeRentPay) {
	LOGGER.info("updateWrNeRentPay dao에서 호출");
	sqlsession.update(nameSpace+"updateWrNeRentPay", wrNeRentPay);
	}
	
	//대여비결과 리스트 중 하나의 대여비결과 선택해서 화면에 뿌려주기 위한 메서드	
	public WrNeRentPay oneSelectWrNeRentPay(int wrWrNeRentPayNumber) {
	LOGGER.info("oneSelectWrNeRentPay dao에서 호출");
	return sqlsession.selectOne(nameSpace+"oneSelectWrNeRentPay", wrWrNeRentPayNumber);
	}
	
	//대여비결과 등록
	public void insertWrNeRentPay(WrNeRentPay wrNeRentPay) {
		LOGGER.info("insertWrNeRentPay 호출");
		sqlsession.insert(nameSpace+"insertWrNeRentPay",wrNeRentPay);
	}
	
	//대여비결과 전체리스트
	public List<WrNeRentPay> listselectWrNeRentPay(Map<String, Object> map){
		LOGGER.info("listselectWrNeRentPay 호출");
		return sqlsession.selectList(nameSpace+"listselectWrNeRentPay", map);		
	}
}
