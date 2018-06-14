/*나성수*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.login.LoginDb;

@Transactional
@Service
public class ProductionPlanService {
	
	@Autowired
	private ProductionPlanDao productionPlanDao;
	
	@Autowired
	private TitlePlanDao titlePlanDao;
	
	public List<ProductionPlanDb> listSelectProductionPlan() {
		Map<String,Object> map = null;
		return productionPlanDao.listSelectProductionPlan(map);
	}
	
	public List<TitlePlanDb> insertProductionPlan(HttpSession session) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("property", ((LoginDb)session.getAttribute("loginMember")).getCorpNumber());
		return titlePlanDao.listSelectTitlePlan(map);
	}
}
