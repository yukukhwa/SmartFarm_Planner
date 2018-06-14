/*[김재희]*/
package com.spam.sfplanner.plan;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PpWorkController {
	@Autowired PpWorkService ppWorkService;
	private final static Logger LOGGER = LoggerFactory.getLogger(PpWorkController.class);
	
	@RequestMapping(value="/updateWorkPlan", method=RequestMethod.GET)
	public String updatePpWork() {
		return "plan/pp_work/updateWorkPlan";
	}
	
	@RequestMapping(value="/listWorkPlan", method=RequestMethod.GET)
	public String listSelectPpWork() {
		return "plan/pp_work/listWorkPlan";
	}
	
	@RequestMapping(value="/addWorkPlan", method=RequestMethod.GET)
	public String insertPpWork() {
		return "plan/pp_work/addWorkPlan";
	}
}
