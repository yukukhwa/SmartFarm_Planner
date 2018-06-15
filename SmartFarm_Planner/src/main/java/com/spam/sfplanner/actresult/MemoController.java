/*나성수*/
package com.spam.sfplanner.actresult;

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
	
	@RequestMapping(value="/listMemo",method = RequestMethod.GET)
	public String listSelectMemo(@RequestParam(value="wrNumber",required=true)int wrNumber,Model model) {
		model.addAttribute("list", memoService.listSelectMemo(wrNumber));
		return "actresult/memo/listMemo";
	}
}
