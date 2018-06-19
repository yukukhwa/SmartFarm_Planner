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
	
	// 대여비결과 전체리스트
	public List<WrNeRentPay> listselectWrNeRentPay(Map<String, Object> map){
		LOGGER.info("listselectWrNeRentPay 호출");
		return sqlsession.selectList(nameSpace+"listselectWrNeRentPay", map);		
	}
}
