/*배건혜*/
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
public class WoNeRentPayService {
	@Autowired 
	private WoNeRentPayDao woNeRentPayDao;
	@Autowired
	private CategoryThemeDao categoryThemeDao;
	@Autowired
	private WoNeedEquipDao woNeedEquipDao;
	@Autowired
	private CompanyRentEquipDao companyRentEquipDao;
	
	public List<WoNeRentPay> listSelectWoNeRentPay(){
		Map<String, Object> map = null;
		return woNeRentPayDao.listSelectWoNeRentPay(map);
	}
	
	public List<WoNeRentPay> listSelectWoNeRentPay(int eNeedequipNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("eNeedequipNumber", eNeedequipNumber);
		return woNeRentPayDao.listSelectWoNeRentPay(map);
	}
	
	public List<WoNeRentPay> listSelectWoNeRentPay(int eNeedequipNumber, String column, String property){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		map.put("eNeedequipNumber", eNeedequipNumber);
		return woNeRentPayDao.listSelectWoNeRentPay(map);
	}
	
	public void insertWoNeRentPay(WoNeRentPay woNeRentPay) {
		woNeRentPayDao.insertWoNeRentPay(woNeRentPay);
	}
	
	public Map<String,Object> insertWoNeRentPay(int eNeedequipNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("eNeedequipNumber", eNeedequipNumber);
		List<WoNeedEquip> woNeedEquipList = woNeedEquipDao.listSelectWoNeedEquip(map);
		List<CategoryTheme> categoryThemeList = categoryThemeDao.listSelectCategoryTheme();
		List<CompanyRentEquip> companyRentEquipList = companyRentEquipDao.listSelectCompanyRentEquip(map);
		map.clear();
		map.put("woNeedEquipList", woNeedEquipList);
		map.put("categoryThemeList", categoryThemeList);
		map.put("companyRentEquipList", companyRentEquipList);
		return map;
	}
}
