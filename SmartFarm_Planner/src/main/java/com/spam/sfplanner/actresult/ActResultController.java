/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spam.sfplanner.login.Login;

@Controller
public class ActResultController {
	
	@Autowired
	private ActResultService actResultService;
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultController.class);
	/*
	 * 실행결과리스트 수정처리하는 매핑
	 * actResult를 매개변수로 받아 서비스의 updateActResult매서드를 호출하여 수정하고
	 * 전체리스트 화면으로 리다이렉트한다.
	 */
	@RequestMapping(value="/updateActResultList", method = RequestMethod.POST)
	public String updateActResult(ActResult actResult) {
		actResultService.updateActResult(actResult);
		return "redirect:/listActResultList";
	}
	/*
	 * 실행결과리스트 수정화면으로 가는 매핑
	 * 실행결과리스트넘버를 매개변수로 받아 상세리스트 매서드를 활용하여
	 * 수정하기전 초기값을 model에 셋팅해주고 updateActResultList.jsp로 이동한다.
	 */
	@RequestMapping(value="/updateActResultList", method = RequestMethod.GET)
	public String updateActResult(Model model
			, @RequestParam(value="ppResultlistNumber") int ppResultlistNumber) {
		model.addAttribute("actResult", actResultService.oneSelectActResult(ppResultlistNumber));
		return "actresult/updateActResultList";
	}
	/*
	 * 실행결과리스트 삭제처리 매핑
	 * 실행결과리스트넘버를 매개변수로 받아 actResultService에 deleteActResult매서드를 호출하여
	 * 해당하는 실행결과리스트와 그 외래키를 가지고 있는 하위항목들을 삭제하고
	 * 실행결과전체리스트화면으로 리다이렉트한다.
	 */
	@RequestMapping(value="/deleteActResultList", method = RequestMethod.GET)
	public String deleteActResult (@RequestParam(value="ppResultlistNumber") int ppResultlistNumber) {
		actResultService.deleteActResult(ppResultlistNumber);
		return "redirect:/listActResultList";
	}
	/*
	 * 실행결과리스트 상세보기 보여주는 화면 매핑
	 * 선택한 실행결과리스트 넘버를 매개변수로 받아 매서드를 호출한 후 결과를 model에 셋팅한후
	 * oneActResultList.jsp로 이동한다.
	 */
	@RequestMapping(value="/oneActResultList", method = RequestMethod.GET)
	public String oneSelectActResult (Model model
			, @RequestParam(value="ppResultlistNumber") int ppResultlistNumber) {
		model.addAttribute("actResult", actResultService.oneSelectActResult(ppResultlistNumber));
		return "actresult/oneActResultList";
	}
	/*
	 * 자신의 농가 실행결과 리스트를 보여주는 화면 매핑
	 * 전체 리스트와 동일하게 사용하였지만,
	 * session에 있는 회사넘버를 가져와 서비스에 있는 listSelectActResult 매서드에 농가넘버매개변수를 넣어
	 * 자신의 농가 실행결과리스트만 호출하게 하였다.
	 */
	@RequestMapping(value="/listMyActResultList", method = RequestMethod.GET)
	public String listSelectMyActResult (Model model, HttpSession session
			, @RequestParam(value="currentPage",defaultValue="1") int currentPage
			, @RequestParam(value="pagePerRow",defaultValue="5") int pagePerRow
			, @RequestParam(value="searchOption", required=false) String searchOption
			, @RequestParam(value="searchKeyword", required=false) String searchKeyword
			, @RequestParam(value="startDate", required=false) String startDate
			, @RequestParam(value="endDate", required=false) String endDate) {
		Login login = (Login) session.getAttribute("loginMember");
		Map<String, Object> map = actResultService.listSelectActResult(login.getCorpNumber(), currentPage, pagePerRow, searchOption, searchKeyword, startDate, endDate);
		model.addAttribute("actResultList", map.get("actResultList"));
		model.addAttribute("currentPage", map.get("currentPage"));
		model.addAttribute("totalPage", map.get("totalPage"));
		model.addAttribute("pagePerRow", map.get("pagePerRow"));
		model.addAttribute("pageList", map.get("pageList"));
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("startDate", startDate);
		model.addAttribute("endDate", endDate);
		return "actresult/listMyActResultList";
	}
	/*
	 * 실행결과리스트 전체 보여주는 화면 매핑
	 * 페이징을 위한 currentPage, pagePerRow / 검색을 위한 searchOption, searchKeyword, startDate, endDate 를 매개변수로받아
	 * 실행결과리스트 전체를 보여주기 위해서 fNumber를 0으로 매개변수로 하여 실행결과 리스트를 호출한 후 model에 셋팅하였다.
	 * 페이징, 검색을 위한 변수는 계속 유지하기 위해 model에 셋팅하였다.
	 * 그리고 askActResultList.jsp로 포워드하였다.
	 */
	@RequestMapping(value="/listActResultList", method = RequestMethod.GET)
	public String listSelectActResult (Model model
			, @RequestParam(value="currentPage", defaultValue="1") int currentPage
			, @RequestParam(value="pagePerRow", defaultValue="5") int pagePerRow
			, @RequestParam(value="searchOption", required=false) String searchOption
			, @RequestParam(value="searchKeyword", required=false) String searchKeyword
			, @RequestParam(value="startDate", required=false) String startDate
			, @RequestParam(value="endDate", required=false) String endDate) {
		Map<String, Object> map = actResultService.listSelectActResult(0, currentPage, pagePerRow, searchOption, searchKeyword, startDate, endDate);
		model.addAttribute("actResultList", map.get("actResultList"));
		model.addAttribute("currentPage", map.get("currentPage"));
		model.addAttribute("totalPage", map.get("totalPage"));
		model.addAttribute("pagePerRow", map.get("pagePerRow"));
		model.addAttribute("pageList", map.get("pageList"));
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("startDate", startDate);
		model.addAttribute("endDate", endDate);
		return "actresult/listActResultList";
	}
	/*
	 * 실행결과 등록 전 계획서 선택 화면 매핑
	 * 세션에 있는 자신의 농가넘버를 사용하여 리스트를 모델에 셋팅하였다.
	 * 그리고 choicePlanner.jsp로 포워드하였다.
	 */
	@RequestMapping(value="/choicePlanner", method = RequestMethod.GET)
	public String listSelectProductionPlan (HttpSession session, Model model) {
		Login login = (Login) session.getAttribute("loginMember");
		model.addAttribute("plannerList", actResultService.listSelectProductionPlan(login.getCorpNumber()));
		return "actresult/choicePlanner";
	}
	/*
	 * 싱행결과리스트 등록하는 매핑
	 * actResult로 매개변수로 받아 service의 insertActResult매서드를 호출하고
	 * home으로 리다이렉트한다.
	 */
	@RequestMapping(value="/addActResultList", method = RequestMethod.POST)
	public String insertActResult (ActResult actResult) {
		actResultService.insertActResult(actResult);
		return "redirect:/listActResultList";
	}
	/*
	 * 실행결과리스트 등록화면으로 가는 매핑
	 * 생산계획서리스트를 가져와 model에 셋팅한다.
	 * 메모등록에 필요한 카테고리를 가져와 model에 셋팅한다.
	 * 그 후 addActResultList.jsp로 이동한다.
	 */
	@RequestMapping(value="/addActResultList", method = RequestMethod.GET)
	public String insertActResult (Model model
			, @RequestParam(value="ppNumber") int ppNumber) {
		model.addAttribute("productionPlan", actResultService.insertActResult(ppNumber).get("productionPlan"));
		model.addAttribute("categoryThemeList", actResultService.insertActResult(ppNumber).get("categoryThemeList"));
		return "actresult/addActResultList";
	}
}
