package com.spam.sfplanner.corporation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CompanyController {
	@Autowired 
	private CompanyService companyService;
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
	
	@RequestMapping(value="/addCompanyDB" , method = RequestMethod.GET)
	public String insertCompanyDB(CompanyDB companyDB) {
		int row = companyService.insertCompanyDB(companyDB);
		logger.info(String.valueOf(row));
		return "corporation/company/addCompany";
	}
}