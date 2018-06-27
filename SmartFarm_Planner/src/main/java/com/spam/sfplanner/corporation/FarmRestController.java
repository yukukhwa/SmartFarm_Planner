/*[김재희]*/
package com.spam.sfplanner.corporation;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@ResponseBody
public class FarmRestController {
	@Autowired FarmService farmService;
	
	@RequestMapping(value="/farmNameCheck", method=RequestMethod.POST)
	public Map<Object, Object> fNameCheck(@RequestBody String fName){
		Map<Object, Object> map = farmService.fNameCheck(fName);
		return map;
	}
}
