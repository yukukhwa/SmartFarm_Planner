/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.category.CategoryMaterialsService;

@Controller
public class WoMaterialsPayController {
	@Autowired WoMaterialsPayService woMaterialsPayService;
	@Autowired CategoryMaterialsService categoryMaterialsService;
	@Autowired PpWorkService ppWorkService;

	private final static Logger LOGGER = LoggerFactory.getLogger(WoMaterialsPayController.class);
	
	/*해당 예상원자재넘버를 매개변수로 받아 삭제처리*/
	@RequestMapping(value="/deleteWoMaterialsPay", method=RequestMethod.GET)
	public String deleteWoMaterialsPay(int eMaterialspayNumber) {
		System.out.println("delete eMaterialspayNumber ===> "+eMaterialspayNumber);
		woMaterialsPayService.deleteWoMaterialsPay(eMaterialspayNumber);
		return "redirect:/home";
	}
	
	/*수정할 예상원자재비의 정보들을 수정처리*/
	@RequestMapping(value="/updateMaterialsPay", method=RequestMethod.POST)
	public String updateWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		woMaterialsPayService.updateWoMaterialsPay(woMaterialsPay);
		return "plan/wo_materials_pay/updateMaterialsPay";
	}
	
	/*하나의 예상원자재비의 정보들을 가져와 출력*/
	@RequestMapping(value="/updateMaterialsPay", method=RequestMethod.GET)
	public String oneSelectWoMaterialsPay(Model model, int eMaterialspayNumber, int ppNumber) {
		System.out.println("eMaterialspayNumber oneselect ==>"+eMaterialspayNumber);
		System.out.println("Materials ppNumber==> "+ppNumber);
		Map<String, Object> map = woMaterialsPayService.oneSelectWoMaterialsPay(eMaterialspayNumber, ppNumber);
		model.addAttribute("woMaterialsPay", map.get("woMaterialsPay"));
		model.addAttribute("categoryMaterialsList", map.get("categoryMaterialsList"));
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		return "plan/wo_materials_pay/updateMaterialsPay";
	}
	
	/*검색조건과 키워드, 작업단계 매개변수를 받아 검색조건에 따른 정보리스트들을 출력해 list로 포워드*/
	@RequestMapping(value="/listMaterialsPay", method=RequestMethod.POST)
	public String listSelectWoMaterialsPay(int ppWorkNumber
										, Model model
										, String searchMaterialsPayOption
										, String searchKeyword) {
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		model.addAttribute("list", woMaterialsPayService.searchListSelectWoMaterialsPay(ppWorkNumber, searchMaterialsPayOption, searchKeyword));
		return "plan/wo_materials_pay/listMaterialsPay";
	}
	
	/*예상 원자재비 전체 리스트를 조회*/ 
	@RequestMapping(value="/listMaterialsPay", method=RequestMethod.GET)
	public String listSelectWoMaterialsPay(int ppWorkNumber, Model model) {
		model.addAttribute("list", woMaterialsPayService.listSelectWoMaterialsPay(ppWorkNumber));
		model.addAttribute("ppWorkNumber", ppWorkNumber);
		return "plan/wo_materials_pay/listMaterialsPay";
	}
	
	/*등록한 정보들을 등록처리 한 후 등록화면으로 포워드*/
	@RequestMapping(value="/addMaterialsPay", method=RequestMethod.POST)
	public String insertWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		System.out.println("add woMaterialsPay===> "+woMaterialsPay);
		woMaterialsPayService.insertWoMaterialsPay(woMaterialsPay);
		return "plan/wo_materials_pay/addMaterialsPay";
	}
	
	/*작업단계를 매개변수로 가져와 원자재 카테고리의 리스트를 출력하고 예상원자재비등록 화면으로 포워드*/
	@RequestMapping(value="/addMaterialsPay", method=RequestMethod.GET)
	public String insertWoMaterialsPay(Model model, int ppNumber) {
		Map<String, Object> map = woMaterialsPayService.insertWoMaterialsPay(ppNumber);
		model.addAttribute("ppWorkList", map.get("ppWorkList"));
		model.addAttribute("categoryMaterials", map.get("categoryMaterials"));
		return "plan/wo_materials_pay/addMaterialsPay";
	}
}
