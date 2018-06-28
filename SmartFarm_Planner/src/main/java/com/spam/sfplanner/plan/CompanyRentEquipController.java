/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spam.sfplanner.corporation.CompanyService;

@Controller
public class CompanyRentEquipController {
	@Autowired
	private CompanyRentEquipService companyRentEquipService;
	@Autowired
	private CompanyService companyService;
	
	/**
	 * 대여가능장비 수정처리 Controller 
	 * @param companyRentEquip
	 * @return
	 */
	@RequestMapping(value="/updateCompanyRentEquip", method=RequestMethod.POST)
	public String updateCompanyRentEquip(CompanyRentEquip companyRentEquip,HttpSession session) {
		companyRentEquipService.updateCompanyRentEquip(companyRentEquip,session);
		return "redirect:/listCompanyRentEquip";
	}
	/**
	 * 대여가능장비 하나의 리스트를 수정화면에 출력하는 Controller
	 * @param cRentNumber
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/updateCompanyRentEquip", method=RequestMethod.GET)
	public String oneSelectCompanyRentEquip(int cRentNumber, Model model) {
		Map<String, Object> map = companyRentEquipService.oneSelectCompanyRentEquip(cRentNumber);
		model.addAttribute("categoryEquip", map.get("categoryEquip"));
		model.addAttribute("company", map.get("company"));
		model.addAttribute("companyRentEquip", map.get("companyRentEquip"));
		return "plan/company_rentequip/updateCompanyRentEquip";
	}
	/**
	 * 대여가능장비 삭제 처리 Controller
	 * @param 대여가능장비넘버
	 * @return 대여가능장비 리스트화면
	 */
	@RequestMapping(value="/deleteCompanyRentEquip", method=RequestMethod.GET)
	public String deleteCompanyRentEquip(int cRentNumber) {
		companyRentEquipService.deleteCompnayRentEquip(cRentNumber);
		return "redirect:/listCompanyRentEquip";
	}
	
	@RequestMapping(value="/listCompanyRentEquip", method=RequestMethod.POST)
	public String listSelectCompanyRentEquip(int cNumber, String column, String property, Model model){
		model.addAttribute("list", companyRentEquipService.listSelectCompanyRentEquip(cNumber,column, property));
		model.addAttribute("cNumber", cNumber);
		return "plan/company_rentequip/listCompanyRentEquip";
	}
	/**
	 * 대여가능장비리스트 출력 Controller
	 * @param model
	 * @return 대여가능장비 리스트화면
	 */
	@RequestMapping(value="/listCompanyRentEquip", method=RequestMethod.GET)
	public String listSelectCompanyRentEquip( Model model) {
		model.addAttribute("list", companyRentEquipService.listSelectCompanyRentEquip());
		return "plan/company_rentequip/listCompanyRentEquip";
	}
	/**
	 * 대여가능장비 등록처리 Controller
	 * @param 장비종류넘버, 대여가능장비
	 * @param 업체넘버
	 * @return 대여가능장비 리스트 화면
	 */
	@RequestMapping(value="/addCompanyRentEquip", method=RequestMethod.POST)
	public String insertCompanyRentEquip(CompanyRentEquip companyRentEquip, HttpSession session) {
		companyRentEquipService.insertCompanyRentEquip(companyRentEquip,session);
		return "redirect:/listCompanyRentEquip";
	}
	
	/**
	 * 대여가능장비 등록화면 출력 Controller
	 * @param model
	 * @return 대여가능장비 등록화면
	 */
	@RequestMapping(value="/addCompanyRentEquip", method=RequestMethod.GET)
	public String insertCompanyRentEquip( Model model) {
		Map<String, Object> map = companyRentEquipService.insertCompanyRentEquip();
		model.addAttribute("categoryEquipList", map.get("categoryEquipList"));
		return "plan/company_rentequip/addCompanyRentEquip";
	}
}
