/*나성수*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryEquip;
import com.spam.sfplanner.category.CategoryEquipDao;
import com.spam.sfplanner.category.CategoryEtcSpendPay;
import com.spam.sfplanner.category.CategoryEtcSpendPayDao;
import com.spam.sfplanner.category.CategoryMaterials;
import com.spam.sfplanner.category.CategoryMaterialsDao;
import com.spam.sfplanner.login.Login;

@Transactional
@Service
public class ProductionPlanService {
	
	@Autowired
	private ProductionPlanDao productionPlanDao;
	
	@Autowired
	private TitlePlanDao titlePlanDao;
	
	@Autowired
	private PpWorkDao ppWorkDao;
	
	@Autowired 
	private WoMaterialsPayDao woMaterialsPayDao;
	
	@Autowired 
	private WoInsurancePayDao woInsurancePayDao;
	
	@Autowired
	private WoHumanPayDao woHumanPayDao;
	
	@Autowired
	private CategoryMaterialsDao categoryMaterialsDao;
	
	@Autowired
	private WoEtcSpendPayDao woEtcSpendPayDao;
	
	@Autowired
	private WoNeedEquipDao woNeedEquipDao;
	
	@Autowired
	private CategoryEtcSpendPayDao categoryEtcSpendPayDao;
	
	@Autowired
	private CategoryEquipDao categoryEquipDao;
	
	@Autowired
	private CompanyRentEquipDao companyRentEquipDao;
	
	@Autowired
	private WoNeRentPayDao woNeRentPayDao;
	
	public List<ProductionPlan> listSelectMyProductionPlan(int fNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("fNumber", fNumber);
		return productionPlanDao.listSelectProductionPlan(map);
	}
	
	public void updateProductionPlan(ProductionPlan productionPlan) {
		List<PpWork> ppWorkList = null;
		List<WoInsurancePay> woInsurancePayList = null;
		List<WoHumanPay> woHumanPayList = null;
		List<WoMaterialsPay> woMaterialsPayList = null;
		List<WoEtcSpendPay> WoEtcSpendPayList = null;
		List<WoNeedEquip> woNeedEquipList = null;
		List<WoNeRentPay> woNeRentPayList = null;
		
		ppWorkList = productionPlan.getPpWorkList();
		if(ppWorkList != null) {
			for(PpWork ppWork : ppWorkList) {
				woInsurancePayList = ppWork.getWoInsurancePayList();
				if(woInsurancePayList != null) {
					for(WoInsurancePay woInsurancePay : woInsurancePayList) {
						woInsurancePayDao.updateInsurancepay(woInsurancePay);
					}
				}
				woHumanPayList = ppWork.getWoHumanPayList();
				if(woHumanPayList != null) {
					for(WoHumanPay woHumanPay : woHumanPayList) {
						woHumanPayDao.updateWoHumanPay(woHumanPay);
					}
				}
				woMaterialsPayList = ppWork.getWoMaterialsPayList();
				if(woMaterialsPayList != null) {
					for(WoMaterialsPay woMaterialsPay : woMaterialsPayList) {
						woMaterialsPayDao.updateWoMaterialsPay(woMaterialsPay);
					}
				}
				WoEtcSpendPayList = ppWork.getWoEtcSpendPayList();
				if(WoEtcSpendPayList != null) {
					for(WoEtcSpendPay woEtcSpendPay : WoEtcSpendPayList) {
						woEtcSpendPayDao.updateWoEtcSpendPay(woEtcSpendPay);
					}
				}
				woNeedEquipList = ppWork.getWoNeedEquipList();
				if(woNeedEquipList != null) {
					for(WoNeedEquip woNeedEquip : woNeedEquipList) {
						woNeRentPayList = woNeedEquip.getWoNeRentPayList();
						if(woNeRentPayList != null) {
							for(WoNeRentPay woNeRentPay : woNeRentPayList) {
								woNeRentPayDao.updateWoNeRentPay(woNeRentPay);
							}
						}
						woNeedEquipDao.updateWoNeedEquip(woNeedEquip);
					}
				}
				ppWorkDao.updatePpWork(ppWork);
			}
		}
		productionPlanDao.updateProductionPlan(productionPlan);
	}
	
	public Map<String,Object> updateProductionPlan(int ppNumber,HttpSession session) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("property", ((Login)session.getAttribute("loginMember")).getCorpNumber());
		List<TitlePlan> titleList = titlePlanDao.listSelectTitlePlan(map);
		map.clear();
		
		List<CategoryMaterials> materialsList = categoryMaterialsDao.listSelectCategoryMaterials();
		List<CategoryEtcSpendPay> etcSpendPayList = categoryEtcSpendPayDao.listSelectCategoryEtcSpendPay();
		List<CategoryEquip> categoryEquipList = categoryEquipDao.listSelectCategoryEquip();
		List<CompanyRentEquip> companyRentEquipList = companyRentEquipDao.listSelectCompanyRentEquip(map);
		
		List<WoNeedEquip> woNeedEquipList = null;
		
		ProductionPlan productionPlan = productionPlanDao.oneSelectProductionPlan(ppNumber);
		
		map.put("ppNumber", ppNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		productionPlan.setPpWorkList(ppWorkList);
		map.clear();
		for(PpWork ppWork : ppWorkList) {
			map.put("ppWorkNumber", ppWork.getPpWorkNumber());
			ppWork.setWoMaterialsPayList(woMaterialsPayDao.listSelectWoMaterialsPay(map));
			ppWork.setWoInsurancePayList(woInsurancePayDao.listSelectWoInsurancePay(map));
			ppWork.setWoHumanPayList(woHumanPayDao.listSelectWoHumanPay(map));
			ppWork.setWoEtcSpendPayList(woEtcSpendPayDao.listSelectWoEtcSpendPay(map));
			woNeedEquipList = woNeedEquipDao.listSelectWoNeedEquip(map);
			for(WoNeedEquip woNeedEquip : woNeedEquipList) {
				map.put("eNeedequipNumber", woNeedEquip.geteNeedequipNumber());
				woNeedEquip.setWoNeRentPayList(woNeRentPayDao.listSelectWoNeRentPay(map));
			}
			ppWork.setWoNeedEquipList(woNeedEquipList);
			map.clear();
		}
		map.clear();
		map.put("titleList", titleList);
		map.put("materialsList", materialsList);
		map.put("etcSpendPayList", etcSpendPayList);
		map.put("categoryEquipList", categoryEquipList);
		map.put("companyRentEquipList", companyRentEquipList);
		map.put("productionPlan", productionPlan);
		return map;
	}
	
	public void deleteProductionPlan(int ppNumber) {
		int ppWorkNumber = 0;
		int eNeedequipNumber = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		for(PpWork ppWork : ppWorkDao.listSelectPpWork(map)) {
			ppWorkNumber = ppWork.getPpWorkNumber();
			map.put("ppWorkNumber", ppWorkNumber);
			for(WoHumanPay woHumanPay : woHumanPayDao.listSelectWoHumanPay(map)) {
				woHumanPayDao.deleteWoHumanPay(woHumanPay.geteHumanpayNumber());
			}
			
			for(WoMaterialsPay woMaterialsPay : woMaterialsPayDao.listSelectWoMaterialsPay(map)) {
				woMaterialsPayDao.deleteWoMaterialsPay(woMaterialsPay.geteMaterialspayNumber());
			}
			
			for(WoInsurancePay woInsurancePay : woInsurancePayDao.listSelectWoInsurancePay(map)) {
				woInsurancePayDao.deleteWoInsurancePay(woInsurancePay.geteInsurancepayNumber());
			}
			
			for(WoEtcSpendPay woEtcSpendPay : woEtcSpendPayDao.listSelectWoEtcSpendPay(map)) {
				System.out.println(woEtcSpendPay.geteEtcspendpayNumber());
				woEtcSpendPayDao.deleteWoEtcSpendPay(woEtcSpendPay.geteEtcspendpayNumber());
			}
			
			for(WoNeedEquip woNeedEquip : woNeedEquipDao.listSelectWoNeedEquip(map)) {
				eNeedequipNumber = woNeedEquip.geteNeedequipNumber();
				map.put("eNeedequipNumber", eNeedequipNumber);
				for(WoNeRentPay woNeRentPay : woNeRentPayDao.listSelectWoNeRentPay(map)) {
					woNeRentPayDao.deleteWoNeRentPay(woNeRentPay.getNeERentpayNumber());
				}
				woNeedEquipDao.deleteWoNeedEquip(eNeedequipNumber);
			}
			ppWorkDao.deletePpWork(ppWorkNumber);
		}
		productionPlanDao.deleteProductionPlan(ppNumber);
	}
	
	public void insertProductionPlan(ProductionPlan productionPlan,HttpSession session) {
		
		String fMemberId = ((Login)session.getAttribute("loginMember")).getId();
		int fNumber = ((Login)session.getAttribute("loginMember")).getCorpNumber();
		List<PpWork> ppWorkList = null;
		List<WoInsurancePay> woInsurancePayList = null;
		List<WoHumanPay> woHumanPayList = null;
		List<WoMaterialsPay> woMaterialsPayList = null;
		List<WoEtcSpendPay> WoEtcSpendPayList = null;
		List<WoNeedEquip> woNeedEquipList = null;
		List<WoNeRentPay> woNeRentPayList = null;
		
		productionPlan.getFarmMember().setfMemberId(fMemberId);
		productionPlanDao.insertProductionPlan(productionPlan);
		
		ppWorkList = productionPlan.getPpWorkList();
		
		if(ppWorkList != null) {
			for(PpWork ppWork : ppWorkList) {
				ppWork.getProductionPlan().setPpNumber(productionPlan.getPpNumber());
				ppWork.getFarm().setfNumber(fNumber);
				ppWorkDao.insertPpWork(ppWork);
				
				woInsurancePayList = ppWork.getWoInsurancePayList();
				woHumanPayList = ppWork.getWoHumanPayList();
				woMaterialsPayList = ppWork.getWoMaterialsPayList();
				WoEtcSpendPayList = ppWork.getWoEtcSpendPayList();
				woNeedEquipList = ppWork.getWoNeedEquipList();
				
				if(woInsurancePayList != null) {
					for(WoInsurancePay woInsurancePay : woInsurancePayList) {
						woInsurancePay.getPpWork().setPpWorkNumber(ppWork.getPpWorkNumber());
						woInsurancePayDao.insertWoInsurancePay(woInsurancePay);
					}
				}
				if(woHumanPayList != null) {
					for(WoHumanPay woHumanPay : woHumanPayList) {
						woHumanPay.getPpWork().setPpWorkNumber(ppWork.getPpWorkNumber());
						woHumanPayDao.insertWoHumanPay(woHumanPay);
					}
				}
				if(woMaterialsPayList != null) {
					for(WoMaterialsPay woMaterialsPay : woMaterialsPayList) {
						woMaterialsPay.getPpWork().setPpWorkNumber(ppWork.getPpWorkNumber());
						woMaterialsPayDao.insertWoMaterialsPay(woMaterialsPay);
					}
				}
				if(WoEtcSpendPayList != null) {
					for(WoEtcSpendPay woEtcSpendPay : WoEtcSpendPayList) {
						woEtcSpendPay.getPpWork().setPpWorkNumber(ppWork.getPpWorkNumber());
						woEtcSpendPayDao.insertWoEtcSpendPay(woEtcSpendPay);
					}
				}
				if(woNeedEquipList != null) {
					for(WoNeedEquip woNeedEquip : woNeedEquipList) {
						woNeedEquip.getPpWork().setPpWorkNumber(ppWork.getPpWorkNumber());
						woNeedEquipDao.insertWoNeedEquip(woNeedEquip);
						
						woNeRentPayList = woNeedEquip.getWoNeRentPayList();
						
						if(woNeRentPayList != null) {
							for(WoNeRentPay woNeRentPay : woNeRentPayList) {
								if(woNeRentPay.getCompanyRentEquip().getcRentNumber() != 0) {
									woNeRentPay.getWoNeedEquip().seteNeedequipNumber(woNeedEquip.geteNeedequipNumber());
									woNeRentPayDao.insertWoNeRentPay(woNeRentPay);
								}
							}
						}
					}
				}
			}
		}
	}
	
	public ProductionPlan oneSelectProductionPlan(int ppNumber) {
		ProductionPlan productionPlan = productionPlanDao.oneSelectProductionPlan(ppNumber);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		productionPlan.setPpWorkList(ppWorkList);
		map.clear();
		
		List<WoNeedEquip> woNeedEquipList = null;
		
		for(PpWork ppWork : ppWorkList) {
			map.put("ppWorkNumber", ppWork.getPpWorkNumber());
			ppWork.setWoMaterialsPayList(woMaterialsPayDao.listSelectWoMaterialsPay(map));
			ppWork.setWoInsurancePayList(woInsurancePayDao.listSelectWoInsurancePay(map));
			ppWork.setWoHumanPayList(woHumanPayDao.listSelectWoHumanPay(map));
			ppWork.setWoEtcSpendPayList(woEtcSpendPayDao.listSelectWoEtcSpendPay(map));
			woNeedEquipList = woNeedEquipDao.listSelectWoNeedEquip(map);
			for(WoNeedEquip woNeedEquip : woNeedEquipList) {
				map.put("eNeedequipNumber", woNeedEquip.geteNeedequipNumber());
				woNeedEquip.setWoNeRentPayList(woNeRentPayDao.listSelectWoNeRentPay(map));
			}
			ppWork.setWoNeedEquipList(woNeedEquipList);
			map.clear();
		}
		//System.out.println(productionPlan);
		return productionPlan;
	}
	
	public List<ProductionPlan> listSelectProductionPlan(String column,Object property) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", column);
		map.put("property", property);
		return productionPlanDao.listSelectProductionPlan(map);
	}
	
	public List<ProductionPlan> listSelectProductionPlan() {
		Map<String,Object> map = null;
		return productionPlanDao.listSelectProductionPlan(map);
	}
	
	public Map<String,Object> insertProductionPlan(HttpSession session) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("property", ((Login)session.getAttribute("loginMember")).getCorpNumber());
		List<TitlePlan> titleList = titlePlanDao.listSelectTitlePlan(map);
		List<CategoryMaterials> materialsList = categoryMaterialsDao.listSelectCategoryMaterials();
		List<CategoryEtcSpendPay> etcSpendPayList = categoryEtcSpendPayDao.listSelectCategoryEtcSpendPay();
		List<CategoryEquip> categoryEquipList = categoryEquipDao.listSelectCategoryEquip();
		map.clear();
		List<CompanyRentEquip> companyRentEquipList = companyRentEquipDao.listSelectCompanyRentEquip(map);
		map.put("titleList", titleList);
		map.put("materialsList", materialsList);
		map.put("etcSpendPayList", etcSpendPayList);
		map.put("categoryEquipList", categoryEquipList);
		map.put("companyRentEquipList", companyRentEquipList);
		return map;
	}
}
