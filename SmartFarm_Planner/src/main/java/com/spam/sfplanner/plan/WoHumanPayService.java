package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class WoHumanPayService {
	@Autowired WoHumanPayDao woHumanPayDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoHumanPayService.class);

	public List<WoHumanPay> listSelectWoHumanPay(int ppWorkNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		return woHumanPayDao.listSelectWoHumanPay(map);
	}
}
