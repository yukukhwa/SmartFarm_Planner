/*나성수*/
package com.spam.sfplanner.corporation;

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
	public String numberCheck(@RequestParam(value="aNumber")int aNumber) {
		String result = agencyService.numberCheck(aNumber);
		return result;
	}
}
