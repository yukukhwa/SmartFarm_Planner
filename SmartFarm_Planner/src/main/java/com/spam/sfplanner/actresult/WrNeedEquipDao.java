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
	private final String nameSpact = "com.spam.sfplanner.actresult.WrNeedEquipMapper.";
	
	//필요장비결과 전체리스트
	public List<WrNeedEquip> listSelectWrNeedEquip(Map<String, Object> map){
		LOGGER.info("listSelectWrNeedEquip 호출");
		return sqlsession.selectList(nameSpact+"listSelectWrNeedEquip", map);
	}
	
}
