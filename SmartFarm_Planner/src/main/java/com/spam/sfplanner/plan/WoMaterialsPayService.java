/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryMaterials;
import com.spam.sfplanner.category.CategoryMaterialsDao;

@Transactional
@Service
public class WoMaterialsPayService {
	@Autowired WoMaterialsPayDao woMaterialsPayDao;
	@Autowired PpWorkDao ppWorkDao;
	@Autowired CategoryMaterialsDao categoryMaterialsDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoMaterialsPayService.class);
	
	public void updateWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		woMaterialsPayDao.updateWoMaterialsPay(woMaterialsPay);
	}
	
	public Map<String, Object> oneSelectWoMaterialsPay(int eMaterialspayNumber, int ppNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 원자재 카테고리 리스트, 작업단계리스트 와야함
		map.put("ppNumber", ppNumber);
		List<CategoryMaterials> categoryMaterialsList = categoryMaterialsDao.listSelectCategoryMaterials();
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		map.clear();
		map.put("ppWorkList", ppWorkList);
		map.put("categoryMaterialsList", categoryMaterialsList);
		map.put("woMaterialsPay", woMaterialsPayDao.oneSelectWoMaterialsPay(eMaterialspayNumber));
		return map;
	}
	
	public void deleteWoMaterialsPay(int eMaterialspayNumber) {
		woMaterialsPayDao.deleteWoMaterialsPay(eMaterialspayNumber);
	}
	
	public void insertWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		woMaterialsPayDao.insertWoMaterialsPay(woMaterialsPay);
	}
	
	public List<WoMaterialsPay> searchListSelectWoMaterialsPay(int ppWorkNumber, String searchMaterialsPayOption, String searchKeyword)	{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		map.put("searchMaterialsPayOption", searchMaterialsPayOption);
		map.put("searchKeyword", searchKeyword);
		return woMaterialsPayDao.listSelectWoMaterialsPay(map);
	}
	
	public List<WoMaterialsPay> listSelectWoMaterialsPay(int ppWorkNumber){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppWorkNumber", ppWorkNumber);
		return woMaterialsPayDao.listSelectWoMaterialsPay(map);
	}
	
	public Map<String, Object> insertWoMaterialsPay(int ppNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		// 작업단계리스트와 원자재 카테고리 가져와야함
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		List<CategoryMaterials> categoryMaterials = categoryMaterialsDao.listSelectCategoryMaterials();
		map.clear();
		map.put("ppWorkList", ppWorkList);
		map.put("categoryMaterials", categoryMaterials);
		return map;
	}
}
