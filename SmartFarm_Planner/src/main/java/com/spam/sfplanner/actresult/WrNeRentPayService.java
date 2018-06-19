//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WrNeRentPayService {
	private static final Logger LOGGER = LoggerFactory.getLogger(PpWoResultController.class);
	@Autowired private WrNeRentPayDao wrNeRentPayDao;
	
	//대여비결과 전체리스트 출력 서비스
	public List<WrNeRentPay> listselectWrNeRentPay(Map<String, Object> map){
		LOGGER.info("listselectWrNeRentPay 호출");
		return wrNeRentPayDao.listselectWrNeRentPay(map);		
	}
}
