package com.spam.sfplanner.actresult;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spam.sfplanner.login.Login;

@RestController
public class ActResultRestController {
	@Autowired
	private ActResultService actResultService;
	
	@RequestMapping(value="/actResultRest", method = RequestMethod.GET)
	public Map searchActResult(HttpSession session
			, @RequestParam(value="currentPage",defaultValue="1") int currentPage
			, @RequestParam(value="pagePerRow",defaultValue="5") int pagePerRow
			, @RequestParam(value="searchOption", required=false) String searchOption
			, @RequestParam(value="searchKeyword", required=false) String searchKeyword
			, @RequestParam(value="startDate", required=false) String startDate
			, @RequestParam(value="endDate", required=false) String endDate) {
		Login login = (Login) session.getAttribute("loginMember");
		Map<String, Object> map = actResultService.listSelectActResult(login.getCorpNumber(), currentPage, pagePerRow, searchOption, searchKeyword, startDate, endDate);
		map.put("actResultList", map.get("actResultList"));
		map.put("currentPage", map.get("currentPage"));
		map.put("totalPage", map.get("totalPage"));
		map.put("pagePerRow", map.get("pagePerRow"));
		map.put("pageList", map.get("pageList"));
		return map;
	}
}
