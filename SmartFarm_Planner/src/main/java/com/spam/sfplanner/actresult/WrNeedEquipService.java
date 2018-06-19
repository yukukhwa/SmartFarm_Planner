//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WrNeedEquipService {
	private static final Logger LOGGER = LoggerFactory.getLogger(WrNeedEquipDao.class);
	@Autowired private WrNeedEquipDao wrNeedEquipDao;
	
	//필요장비결과 전체리스트 출력 서비스
	public List<WrNeedEquip> listSelectWrNeedEquip(Map<String, Object> map){
		LOGGER.info("listSelectWrNeedEquip 호출");
		return wrNeedEquipDao.listSelectWrNeedEquip(map);
	}
	
}
