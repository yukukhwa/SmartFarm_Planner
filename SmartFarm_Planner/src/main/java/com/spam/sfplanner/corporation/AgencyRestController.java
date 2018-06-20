/*나성수*/
package com.spam.sfplanner.corporation;

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
	
	@RequestMapping(value="/agencyNameCheck",method = RequestMethod.POST)
	public  Map<String, Object> nameCheck(@RequestParam(value="aName")String aName) {
		return agencyService.nameOrNumberCheck(aName);
	}
	
	@RequestMapping(value="/agencyNumberCheck",method = RequestMethod.POST)
	public Map<String, Object> numberCheck(@RequestParam(value="aNumber")int aNumber) {
		return agencyService.nameOrNumberCheck(aNumber);
	}
}
