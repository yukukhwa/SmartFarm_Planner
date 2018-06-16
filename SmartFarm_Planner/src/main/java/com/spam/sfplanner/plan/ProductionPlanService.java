/*나성수*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.login.Login;

@Transactional
@Service
public class ProductionPlanService {
	
	@Autowired
	private ProductionPlanDao productionPlanDao;
	
	@Autowired
	private TitlePlanDao titlePlanDao;
	
	@Autowired
	private PpWorkDao ppWorkDao;
	
	@Autowired 
	private WoMaterialsPayDao woMaterialsPayDao;
	
	@Autowired 
	private WoInsurancePayDao woInsurancePayDao;
	
	@Autowired
	private WoHumanPayDao woHumanPayDao;
	
	public ProductionPlan oneSelectProductionPlan(int ppNumber) {
		ProductionPlan productionPlan = productionPlanDao.oneSelectProductionPlan(ppNumber);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		productionPlan.setPpWorkList(ppWorkList);
		map.clear();
		for(PpWork ppWork : ppWorkList) {
			map.put("search", "yes");
			map.put("column", "작업단계넘버");
			map.put("ppWorkNumber", ppWork.getPpWorkNumber());
			ppWork.setWoMaterialsPayList(woMaterialsPayDao.listSelectWoMaterialsPay(ppWork.getPpWorkNumber()));
			ppWork.setWoInsurancePayList(woInsurancePayDao.listSelectWoInsurancePay(map));
			ppWork.setWoHumanPayList(woHumanPayDao.listSelectWoHumanPay(map));
			map.clear();
		}
		return productionPlan;
	}
	
	public List<ProductionPlan> listSelectProductionPlan(String column,Object property) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		return productionPlanDao.listSelectProductionPlan(map);
	}
	
	public List<ProductionPlan> listSelectProductionPlan() {
		Map<String,Object> map = null;
		return productionPlanDao.listSelectProductionPlan(map);
	}
	
	public List<TitlePlan> insertProductionPlan(HttpSession session) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("property", ((Login)session.getAttribute("loginMember")).getCorpNumber());
		return titlePlanDao.listSelectTitlePlan(map);
	}
}
