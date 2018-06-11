package com.spam.sfplanner.actresult;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ActResultService {
	
	@Autowired
	private ActResultDao actResultDao;
	@Autowired
	private WrHumanPayDao wrHumanPayDao;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultService.class);
	
	public int insertActResult(ActResultDb actResultDb) {
		System.out.println(actResultDb);
		System.out.println(actResultDb.getWrHumanPayDb());
		for(WrHumanPayDb wrHumanPayDb : actResultDb.getWrHumanPayDb()) {
			System.out.println(wrHumanPayDb);
		}
		return 0;
	}
}
