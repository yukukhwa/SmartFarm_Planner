/*배건혜*/
package com.spam.sfplanner.corporation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CompanyRestController {
	@Autowired 
	private CompanyService companyService;

	@RequestMapping(value="/checkCompanyNumber" , method = RequestMethod.POST)
	public Map checkNumber(@RequestParam(value="cNumber")int cNumber) {
		String result = companyService.checkCNumber(cNumber);
		Map<String, String> resultMap = new HashMap<String, String>();
		if(result == null) {
			System.out.println(cNumber+"업체넘버가 존재하지 않습니다.");
			resultMap.put("boolean", "false");
			resultMap.put("result", "해당업체는 존재하지 않습니다.");
			return resultMap;
		}
		System.out.println(cNumber+"해당업체넘버가 존재합니다.");
		resultMap.put("boolean", "true");
		resultMap.put("result", result);
		return resultMap;
	}
	
}
