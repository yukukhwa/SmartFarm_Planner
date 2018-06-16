/*나성수*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryTheme;
import com.spam.sfplanner.category.CategoryThemeDao;

@Transactional
@Service
public class WoInsurancePayService {

	@Autowired
	private WoInsurancePayDao woInsurancePayDao;
	
	@Autowired
	private PpWorkDao ppWorkDao;
	
	@Autowired
	private CategoryThemeDao categoryThemeDao;
	
	public void updateInsurancepay(WoInsurancePay woInsurancePay) {
		woInsurancePayDao.updateInsurancepay(woInsurancePay);
	}
	
	public Map<String, Object> updateInsurancepay(int ppNumber,int eInsurancepayNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		map.put("search", "yes");
		map.put("column", "예상보험비넘버");
		map.put("property", eInsurancepayNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		List<CategoryTheme> themeList = categoryThemeDao.listSelectCategoryTheme();
		WoInsurancePay woInsurancePay = woInsurancePayDao.updateInsurancepay(map);
		map.clear();
		map.put("ppWorkList", ppWorkList);
		map.put("themeList", themeList);
		map.put("woInsurancePay", woInsurancePay);
		return map;
	}
	
	public void deleteWoInsurancePay(int eInsurancepayNumber) {
		woInsurancePayDao.deleteWoInsurancePay(eInsurancepayNumber);
	}
	
	public void insertWoInsurancePay(WoInsurancePay woInsurancePay) {
		woInsurancePayDao.insertWoInsurancePay(woInsurancePay);
	}
	
	public Map<String, Object> insertWoInsurancePay(int ppNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		List<CategoryTheme> themeList = categoryThemeDao.listSelectCategoryTheme();
		map.clear();
		map.put("ppWorkList", ppWorkList);
		map.put("themeList", themeList);
		return map;
	}
	
	public List<WoInsurancePay> listSelectWoInsurancePay() {
		Map<String,Object> map = null;
		return woInsurancePayDao.listSelectWoInsurancePay(map);
	}
	
	public List<WoInsurancePay> listSelectWoInsurancePay(int ppWorkNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "작업단계넘버");
		map.put("ppWorkNumber", ppWorkNumber);
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
