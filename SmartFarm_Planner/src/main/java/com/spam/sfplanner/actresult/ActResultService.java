/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.plan.ProductionPlanDao;
import com.spam.sfplanner.plan.ProductionPlan;
import com.spam.sfplanner.plan.WoHumanPayDao;
import com.spam.sfplanner.plan.WoHumanPay;

@Service
@Transactional
public class ActResultService {
	
	@Autowired
	private ActResultDao actResultDao;
	@Autowired
	private WrHumanPayDao wrHumanPayDao;
	@Autowired
	private WoHumanPayDao woHumanPayDao;
	@Autowired
	private ProductionPlanDao productionPlanDao;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultService.class);
	
	public int insertActResult(ActResult actResult) {
		return 0;
	}
	
	public List<WoHumanPay> listSelectWoHumanPay() {
		return woHumanPayDao.listSelectWoHumanPay();
	}
	
	public List<ActResult> listSelectActResult(int fNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(fNumber);
		if(fNumber != 0) {
			map.put("search", "yes");
			map.put("fNumber", fNumber);
		}
		return actResultDao.listSelectActResult(map);
	}
	
	public List<ProductionPlan> listSelectPlan(int corpNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("fNumber", corpNumber);
		return productionPlanDao.listSelectProductionPlan(map);
	}

}
