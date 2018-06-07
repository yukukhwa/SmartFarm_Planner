package com.spam.sfplanner.actresult;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spam.sfplanner.plan.WoHumanPayDao;
import com.spam.sfplanner.plan.WoHumanPayDb;

@Service
public class WrHumanPayService {
	
	@Autowired
	private WrHumanPayDao wrHumanPayDao;
	@Autowired
	private WoHumanPayDao woHumanPayDao;
	
	private static final Logger logger = LoggerFactory.getLogger(WrHumanPayService.class);
	
	public int insertWrHumanPay(WrHumanPayDb wrHumanPayDb) {
		return wrHumanPayDao.insertWrHumanPay(wrHumanPayDb);
	}
	public List<WoHumanPayDb> listSelectWoHumanPay() {
		return woHumanPayDao.listSelectWoHumanPay();
	}
}
