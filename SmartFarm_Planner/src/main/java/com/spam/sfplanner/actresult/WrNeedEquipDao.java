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
public class WrNeedEquipDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrNeedEquipDao.class);
	@Autowired private SqlSessionTemplate sqlsession;
	private final String nameSpace = "com.spam.sfplanner.actresult.WrNeedEquipMapper.";
	
	//작업단계결과 리스트 중 하나의 필요장비 결과 선택해서 삭제처리
	public void deleteWrNeedEquip(int wrNumber) {
	LOGGER.info("deleteWrNeedEquip dao에서 호출");
	sqlsession.delete(nameSpace+"deleteWrNeedEquip", wrNumber);
	}
	
	//필요장비 결과 리스트 중 하나의 필요장비 결과 선택해서 삭제처리
	public void oneDeleteWrNeedEquip(WrNeedEquip wrNeedEquip) {
	LOGGER.info("oneDeleteWrNeedEquip dao에서 호출");
	sqlsession.delete(nameSpace+"oneDeleteWrNeedEquip", wrNeedEquip);
	}

	//필요장비 결과 수정화면에서 보낸 정보로 수정처리
	public void updateWrNeedEquip(WrNeedEquip wrNeedEquip) {
	LOGGER.info("updateWrNeedEquip dao에서 호출");
	sqlsession.update(nameSpace+"updateWrNeedEquip", wrNeedEquip);
	}
	
	//필요장비 결과 리스트 중 하나의 필요장비 결과 선택해서 화면에 뿌려주기 위한 메서드	
	public WrNeedEquip oneSelectWrNeedEquip(int wrWrNeedEquipNumber) {
	LOGGER.info("oneSelectWrNeedEquip dao에서 호출");
	return sqlsession.selectOne(nameSpace+"oneSelectWrNeedEquip", wrWrNeedEquipNumber);
	}
		
	//필요장비 결과 등록
	public void insertWrNeedEquip(WrNeedEquip wrNeedEquip) {
		LOGGER.info("insertWrNeedEquip 호출");
		sqlsession.insert(nameSpace+"insertWrNeedEquip",wrNeedEquip);
	}
	
	//필요장비결과 전체리스트
	public List<WrNeedEquip> listSelectWrNeedEquip(Map<String, Object> map){
		LOGGER.info("listSelectWrNeedEquip 호출");
		return sqlsession.selectList(nameSpace+"listSelectWrNeedEquip", map);
	}
	
}
