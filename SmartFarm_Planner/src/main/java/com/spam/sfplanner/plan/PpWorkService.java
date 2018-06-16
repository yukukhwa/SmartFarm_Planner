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
	@Autowired WoMaterialsPayDao woMaterialsPayDao;
	@Autowired WoInsurancePayDao woInsurancePayDao;
	
	private final static Logger LOGGER = LoggerFactory.getLogger(PpWorkService.class);
	
	public PpWork oneSelectPpWork(int ppWorkNumber) {
		LOGGER.info("PpWorkService oneSelectPpWork 호출");
		PpWork ppWork = new PpWork();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		ppWork.setWoMaterialsPayList(woMaterialsPayDao.listSelectWoMaterialsPay(ppWorkNumber));
		ppWork.setWoInsurancePayList(woInsurancePayDao.listSelectWoInsurancePay(map));
		System.out.println("ppWork"+ppWork);
		System.out.println("materialsPayList====> "+ppWork.getWoMaterialsPayList());
		System.out.println("ppWork.to==> "+ppWork.toString());
		return ppWork;
	}
	
	public List<PpWork> searchListSelectPpWork(String searchWorkPlanOption, String searchKeyword, int ppNumber){
		LOGGER.info("PpWorkService searchList 호출");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchWorkPlanOption", searchWorkPlanOption);
		map.put("searchKeyword", searchKeyword);
		map.put("ppNumber", ppNumber);
		return ppWorkDao.searchListSelectPpWork(map);
	}
	
	public List<PpWork> listSelectPpWork(int ppNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		return ppWorkDao.listSelectPpWork(map);
	}
}
