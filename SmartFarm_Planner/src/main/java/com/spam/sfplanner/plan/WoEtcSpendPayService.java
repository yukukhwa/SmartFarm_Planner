/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryEtcSpendPay;
import com.spam.sfplanner.category.CategoryEtcSpendPayDao;
@Transactional
@Service
public class WoEtcSpendPayService {
	@Autowired
	private WoEtcSpendPayDao woEtcSpendaPayDao;
	@Autowired
	private PpWorkDao ppWorkDao;
	@Autowired
	private CategoryEtcSpendPayDao categoryEtcSpendPayDao;
	
	public List<WoEtcSpendPay> listSelectWoEtcSpendPay(){
		Map<String, Object> map = null;
		return woEtcSpendaPayDao.listSelectWoEtcSpendPay(map);
	}
	
	public List<WoEtcSpendPay> listSelectWoEtcSpendPay(int ppWorkNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "작업단계넘버");
		map.put("ppWorkNumber", ppWorkNumber);
		return woEtcSpendaPayDao.listSelectWoEtcSpendPay(map);
	}
	
	public List<WoEtcSpendPay> listSelectWoEtcSpendPay(int ppWorkNumber, String column, String property){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		map.put("ppWorkNumber", ppWorkNumber);
		return woEtcSpendaPayDao.listSelectWoEtcSpendPay(map);
	}
	
	public void insertWoEtcSpendPay(WoEtcSpendPay woEtcSpendPay) {
		woEtcSpendaPayDao.insertWoEtcSpendPay(woEtcSpendPay);
	}
	
	public Map<String, Object> insertWoEtcSpendPay(int ppNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		List<CategoryEtcSpendPay> categoryEtcSpendPay = categoryEtcSpendPayDao.listSelectCategoryEtcSpendPay();
		map.clear();
		map.put("ppWorkList", ppWorkList);
		map.put("categoryEtcSpendPay", categoryEtcSpendPay);
		return map;
 	}
	
	
}
