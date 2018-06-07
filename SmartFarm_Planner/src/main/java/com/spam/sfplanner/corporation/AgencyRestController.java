/*나성수*/
package com.spam.sfplanner.corporation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AgencyRestController {
	
	@Autowired
	private AgencyService agencyService;
	
	@RequestMapping(value="/agencyNumberCheck",method = RequestMethod.POST)
	public Map numberCheck(@RequestParam(value="aNumber")int aNumber) {
		String result = agencyService.numberCheck(aNumber);
		Map<String, String> resultMap = new HashMap<String, String>();
		if(result == null) {
			System.out.println(aNumber+"해당관리기관코드는 존재하지 않습니다.");
			resultMap.put("TF", "F");
			resultMap.put("result", "해당기관은 존재하지 않습니다.");
			return resultMap;// 해당 관리기관코드로 가입불가능
		}
		System.out.println(aNumber+"해당관리기관코드는 존재합니다.");
		resultMap.put("TF", "T");
		resultMap.put("result", result);
		return resultMap;// 해당 관리기관코드로 가입불가능
	}
}
