package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class WoMaterialsPayService {
	@Autowired WoMaterialsPayDao woMaterialsPayDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoMaterialsPayService.class);
	
	public void updateWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		woMaterialsPayDao.updateWoMaterialsPay(woMaterialsPay);
	}
	
	public WoMaterialsPay oneSelectWoMaterialsPay(int eMaterialspayNumber) {
		return woMaterialsPayDao.oneSelectWoMaterialsPay(eMaterialspayNumber);
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
}
