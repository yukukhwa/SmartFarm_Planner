/*[김재희]*/
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
public class PpWorkService {
	@Autowired PpWorkDao ppWorkDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(PpWorkService.class);
	
	public List<PpWork> searchListSelectPpWork(String searchWorkPlanOption, String searchKeyword, int ppNumber){
		LOGGER.info("PpWorkService searchList 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchWorkPlanOption", searchWorkPlanOption);
		map.put("searchKeyword", searchKeyword);
		map.put("ppNumber", ppNumber);
		return ppWorkDao.searchListSelectPpWork(map);
	}
	
	public List<PpWork> listSelectPpWork(int ppNumber){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("ppNumber", ppNumber);
		return ppWorkDao.listSelectPpWork(map);
	}
}
