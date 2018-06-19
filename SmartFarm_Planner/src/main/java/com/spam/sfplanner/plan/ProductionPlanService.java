/*나성수*/
package com.spam.sfplanner.plan;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryTheme;
import com.spam.sfplanner.category.CategoryThemeDao;
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
	private CategoryThemeDao categoryThemeDao;
	
	public List<ProductionPlan> listSelectMyProductionPlan(int fNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("fNumber", fNumber);
		return productionPlanDao.listSelectProductionPlan(map);
	}
	
	public void updateProductionPlan(ProductionPlan productionPlan) {
		productionPlanDao.updateProductionPlan(productionPlan);
	}
	
	public Map<String,Object> updateProductionPlan(int ppNumber,HttpSession session) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("property", ((Login)session.getAttribute("loginMember")).getCorpNumber());
		List<TitlePlan> titleList = titlePlanDao.listSelectTitlePlan(map);
		ProductionPlan productionPlan = productionPlanDao.oneSelectProductionPlan(ppNumber);
		map.clear();
		map.put("titleList", titleList);
		map.put("productionPlan", productionPlan);
		return map;
	}
	
	public void deleteProductionPlan(int ppNumber) {
		productionPlanDao.deleteProductionPlan(ppNumber);
	}
	
	public void insertProductionPlan(ProductionPlan productionPlan,HttpSession session) {
		
		String fMemberId = ((Login)session.getAttribute("loginMember")).getId();
		int fNumber = ((Login)session.getAttribute("loginMember")).getCorpNumber();
		List<WoInsurancePay> WoInsurancePayList = null;
		
		productionPlan.getFarmMember().setfMemberId(fMemberId);
		productionPlanDao.insertProductionPlan(productionPlan);
		for(PpWork ppWork : productionPlan.getPpWorkList()) {
			ppWork.getProductionPlan().setPpNumber(productionPlan.getPpNumber());
			ppWork.getFarm().setfNumber(fNumber);
			ppWorkDao.insertPpWork(ppWork);
			WoInsurancePayList = ppWork.getWoInsurancePayList();
			if(WoInsurancePayList != null) {
				for(WoInsurancePay woInsurancePay : WoInsurancePayList) {
					woInsurancePay.getPpWork().setPpWorkNumber(ppWork.getPpWorkNumber());
					woInsurancePayDao.insertWoInsurancePay(woInsurancePay);
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
		for(PpWork ppWork : ppWorkList) {
			map.put("search", "yes");
			map.put("column", "작업단계넘버");
			map.put("ppWorkNumber", ppWork.getPpWorkNumber());
			ppWork.setWoMaterialsPayList(woMaterialsPayDao.listSelectWoMaterialsPay(map));
			ppWork.setWoInsurancePayList(woInsurancePayDao.listSelectWoInsurancePay(map));
			ppWork.setWoHumanPayList(woHumanPayDao.listSelectWoHumanPay(map));
			map.clear();
		}
		System.out.println(productionPlan);
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
		List<CategoryTheme> themeList = categoryThemeDao.listSelectCategoryTheme();
		map.clear();
		map.put("titleList", titleList);
		map.put("themeList", themeList);
		return map;
	}
}
