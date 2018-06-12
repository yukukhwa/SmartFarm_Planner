/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.plan.WoHumanPayDao;
import com.spam.sfplanner.plan.WoHumanPayDb;

@Service
@Transactional
public class ActResultService {
	
	@Autowired
	private ActResultDao actResultDao;
	@Autowired
	private WrHumanPayDao wrHumanPayDao;
	@Autowired
	private WoHumanPayDao woHumanPayDao;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultService.class);
	
	public int insertActResult(ActResultDb actResultDb) {
		return 0;
	}
	
	public List<WoHumanPayDb> listSelectWoHumanPay() {
		return woHumanPayDao.listSelectWoHumanPay();
	}
}
