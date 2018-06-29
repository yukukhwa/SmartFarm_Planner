package com.spam.sfplanner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spam.sfplanner.actresult.ActResult;
import com.spam.sfplanner.actresult.ActResultDao;
import com.spam.sfplanner.actresult.PpWoResult;
import com.spam.sfplanner.actresult.PpWoResultDao;
import com.spam.sfplanner.plan.ProductionPlan;
import com.spam.sfplanner.plan.ProductionPlanDao;

@Service
public class HomeService {

	@Autowired
	private ActResultDao actResultDao; // 실행결과 dao
	
	@Autowired
	private ProductionPlanDao productionPlanDao; // 계획서 dao
	
	@Autowired
	private PpWoResultDao ppWoResultDao; // 작업단계결과 dao
	
	public List<Double> compare1(int ppNumber) {
		double planTotalarea = 0; //총 계획면적
		List<Double> resultList = new ArrayList<Double>();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		map.put("beginRow", 0);
		map.put("pagePerRow", 10);
		ProductionPlan productionPlan = productionPlanDao.oneSelectProductionPlan(ppNumber);
		planTotalarea = productionPlan.getPpOwnarea()+productionPlan.getPpRentarea();
		for(ActResult actResult : actResultDao.listSelectActResult(map)) {
			double actResultTotalarea = 0; //총 작업면적
			map.put("ppResultlistNumber", actResult.getPpResultlistNumber());
			for(PpWoResult PpWoResult : ppWoResultDao.listSelectWorkResult(map)) {
				actResultTotalarea += PpWoResult.getWrTotalarea()-PpWoResult.getWrReworkarea();
			}
			resultList.add((actResultTotalarea/planTotalarea)*100);
		}
		System.out.println(resultList);
		return resultList;
	}
}
