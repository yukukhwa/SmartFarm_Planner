package com.spam.sfplanner.plan;

import java.util.List;

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
	
	public List<WoMaterialsPay> listSelectWoMaterialsPay(int ppWorkNumber){
		return woMaterialsPayDao.listSelectWoMaterialsPay(ppWorkNumber);
	}
}
