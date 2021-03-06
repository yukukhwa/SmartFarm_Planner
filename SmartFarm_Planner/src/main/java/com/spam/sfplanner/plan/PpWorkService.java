/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
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
	@Autowired WoHumanPayDao woHumanPayDao;
	@Autowired ProductionPlanDao productionPlanDao;
	@Autowired WoEtcSpendPayDao woEtcSpendPayDao;
	@Autowired WoNeedEquipDao woNeedEquipDao;
	
	private final static Logger LOGGER = LoggerFactory.getLogger(PpWorkService.class);
	
	public void updatePpWork(PpWork ppWork) {
		LOGGER.info("ppWorkService update처리 호출");
		ppWorkDao.updatePpWork(ppWork);
	}
	
	public Map<String, Object> updatePpWork(int ppWorkNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		List<ProductionPlan> productionPlanList = productionPlanDao.listSelectProductionPlan(map);
		map.clear();
		map.put("productionPlanList", productionPlanList);
		map.put("ppWork", ppWorkDao.oneSelectPpWork(ppWorkNumber));
		return map;
	}
	
	public void deletePpWork(int ppWorkNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		for(WoHumanPay woHumanPay : woHumanPayDao.listSelectWoHumanPay(map)) {
			woHumanPayDao.deleteWoHumanPay(woHumanPay.geteHumanpayNumber());
		}
		
		for(WoMaterialsPay woMaterialsPay : woMaterialsPayDao.listSelectWoMaterialsPay(map)) {
			woMaterialsPayDao.deleteWoMaterialsPay(woMaterialsPay.geteMaterialspayNumber());
		}
		
		for(WoInsurancePay woInsurancePay : woInsurancePayDao.listSelectWoInsurancePay(map)) {
			woInsurancePayDao.deleteWoInsurancePay(woInsurancePay.geteInsurancepayNumber());
		}	
		
		/*for(WoEtcSpendPay woEtcSpendPay : woEtcSpendPayDao.listSelectWoEtcSpendPay(map)) {
			WoEtcSpendPayDao.삭제
		}
		
		for(WoNeedEquip woNeedEquip : woNeedEquipDao.listSelectWoNeedEquip(map)) {
			woNeedEquipDao.삭제
		}*/
		ppWorkDao.deletePpWork(ppWorkNumber);
	}
	
	public void insertPpWork(PpWork ppWork) {
		ppWorkDao.insertPpWork(ppWork); 
	}
	
	public PpWork oneSelectPpWork(int ppWorkNumber) {
		LOGGER.info("PpWorkService oneSelectPpWork 호출");
		PpWork ppWork = new PpWork();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		ppWork.setWoMaterialsPayList(woMaterialsPayDao.listSelectWoMaterialsPay(map));
		ppWork.setWoInsurancePayList(woInsurancePayDao.listSelectWoInsurancePay(map));
		ppWork.setWoHumanPayList(woHumanPayDao.listSelectWoHumanPay(map));
		ppWork.setWoEtcSpendPayList(woEtcSpendPayDao.listSelectWoEtcSpendPay(map));
		ppWork.setWoNeedEquipList(woNeedEquipDao.listSelectWoNeedEquip(map));
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
	
	public List<ProductionPlan> insertPpWork(Map<String, Object> map){
		return productionPlanDao.listSelectProductionPlan(map);
	}
}
