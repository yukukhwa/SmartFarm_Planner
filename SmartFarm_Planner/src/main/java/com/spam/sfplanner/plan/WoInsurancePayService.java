/*나성수*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class WoInsurancePayService {

	@Autowired
	private WoInsurancePayDao woInsurancePayDao;
	
	public void listSelectWoInsurancePay() {
		Map<String,Object> map = null;
		woInsurancePayDao.listSelectWoInsurancePay(map);
	}
	
	public List<WoInsurancePay> listSelectWoInsurancePay(int ppWorkNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "작업단계넘버");
		map.put("property", ppWorkNumber);
		return woInsurancePayDao.listSelectWoInsurancePay(map);
	}
	
	public List<WoInsurancePay> listSelectWoInsurancePay(int ppWorkNumber,String column,String property) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		map.put("ppWorkNumber", ppWorkNumber);
		return woInsurancePayDao.listSelectWoInsurancePay(map);
	}
}
