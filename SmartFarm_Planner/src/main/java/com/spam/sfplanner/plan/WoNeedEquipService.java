/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryEquip;
import com.spam.sfplanner.category.CategoryEquipDao;
import com.spam.sfplanner.category.CategoryTheme;
import com.spam.sfplanner.category.CategoryThemeDao;
@Transactional
@Service
public class WoNeedEquipService {
	@Autowired
	private WoNeedEquipDao woNeedEquipDao;
	@Autowired
	private PpWorkDao ppWorkDao;
	@Autowired
	private CategoryEquipDao categoryEquipDao;
	@Autowired
	private CompanyRentEquipDao companyRentEquipDao;
	@Autowired
	private CategoryThemeDao categoryThemeDao;
	
	public List<WoNeedEquip> listSelectWoNeedEquip(){
		Map<String, Object> map = null;
		return woNeedEquipDao.listSelectWoNeedEquip(map);
	}
	
	public List<WoNeedEquip> listSelectWoNeedEquip(int ppWorkNumber){
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("search", "yes");
		map.put("column", "작업단계넘버");
		map.put("ppWorkNumber", ppWorkNumber);
		return woNeedEquipDao.listSelectWoNeedEquip(map);
	}
	
	public List<WoNeedEquip> listSelectWoNeedEquip(int ppWorkNumber, String column, String property){
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		map.put("ppWorkNumber", ppWorkNumber);
		return woNeedEquipDao.listSelectWoNeedEquip(map);
	}
	
	public void insertWoNeedEquip(WoNeedEquip woNeedEquip) {
		woNeedEquipDao.insertWoNeedEquip(woNeedEquip);
	}
	
	public Map<String, Object> insertWoNeedEquip(int ppNumber){ 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		List<CategoryEquip> categoryEquip = categoryEquipDao.listSelectCategoryEquip();
		List<CompanyRentEquip> companyRentEquipList = companyRentEquipDao.listSelectCompanyRentEquip(map);
		List<CategoryTheme> categoryThemeList = categoryThemeDao.listSelectCategoryTheme();
		map.clear();
		map.put("ppWorkList", ppWorkList);
		map.put("categoryEquip", categoryEquip);
		map.put("companyRentEquipList", companyRentEquipList);
		map.put("categoryThemeList", categoryThemeList);
		
		return map;
	}
	


}
