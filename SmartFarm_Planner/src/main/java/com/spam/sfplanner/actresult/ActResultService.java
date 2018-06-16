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
	@Autowired
	private PpWoResultDao ppWoResultDao;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultService.class);
	
	public Map<String, Object> oneSelectActResult(int ppResultlistNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("ppResultlistNumber", ppResultlistNumber);
		map.put("actResultList", actResultDao.oneSelectActResult(map));
		map.put("woResultList", ppWoResultDao.listSelectWorkResult());
		return map;
	}
	
	public int insertActResult(ActResult actResult, WrHumanPay wrHumanPay) {
		/*actResultDao.insertActResult(actResult);*/
		wrHumanPayDao.insertWrHumanPay(wrHumanPay);
		return 0;
	}
	
	public List<WoHumanPay> listSelectWoHumanPay() {
		Map<String, Object> map = new HashMap<String, Object>();
		return woHumanPayDao.listSelectWoHumanPay(map);
	}
	/*
	 * 농가넘버를 매개변수로 받아 map에 셋팅한후 해당하는 실행결과 리스트를 호출하는 dao를 호출하고
	 * 그 결과를 리턴하는 매서드
	 */
	public List<ActResult> listSelectActResult(int fNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		if(fNumber != 0) {
			map.put("search", "yes");
			map.put("fNumber", fNumber);
		}
		return actResultDao.listSelectActResult(map);
	}
	/*
	 * 농가넘버를 매개변수로 받아 map에 농가코드를 셋팅해준 후 생산계획 리스트를 출력하는 매서드를 호출하여
	 * 그 목록을 리턴한다.
	 */
	public List<ProductionPlan> listSelectPlan(int corpNumber) {
		/*
		 * search에 yes를 넣으면 조건절이 붙고
		 * column에 농가넘버를 넣어 농가인지 조건을 붙고
		 * 해당하는 농가만 알기 위해 농가넘버를 붙여
		 * map에 셋팅한다.
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("fNumber", corpNumber);
		return productionPlanDao.listSelectProductionPlan(map);
	}

}
