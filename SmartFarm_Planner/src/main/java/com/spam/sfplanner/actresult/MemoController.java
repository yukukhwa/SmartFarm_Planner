/*나성수*/
package com.spam.sfplanner.actresult;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemoController {

	@Autowired
	private MemoService memoService;
	
	@RequestMapping(value="/addMemo",method = RequestMethod.POST)
	public String insertMemo(Memo memo) {
		memoService.insertMemo(memo);
		return "redirect:/home";
	}
	
	@RequestMapping(value="/addMemo",method = RequestMethod.GET)
	public String insertMemo(@RequestParam(value="ppResultlistNumber")int ppResultlistNumber,Model model) {
		Map<String, Object> map = memoService.insertMemo(ppResultlistNumber);
		model.addAttribute("categoryThemeList", map.get("categoryThemeList"));
		model.addAttribute("ppWoResultList", map.get("ppWoResultList"));
		return "actresult/memo/addMemo";
	}
	
	@RequestMapping(value="/listMemo",method = RequestMethod.GET)
	public String listSelectMemo(@RequestParam(value="wrNumber",required=true)int wrNumber,Model model) {
		model.addAttribute("list", memoService.listSelectMemo(wrNumber));
		return "actresult/memo/listMemo";
	}
}
