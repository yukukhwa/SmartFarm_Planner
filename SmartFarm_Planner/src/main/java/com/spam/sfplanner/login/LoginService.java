/*[김기성]*/
package com.spam.sfplanner.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	@Autowired
	private LoginDao loginDao;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/*
	 * loginDb를 매개변수로 받아 loginDao에서
	 * oneSelectFarmMember에 loginDb를 입력하여 나온 결과값을 returnLogin에 대입한다.
	 * id와 boss가 일치하다면 boss를 boss로 셋팅하고 아니면 null로 셋팅한다.
	 * 그후 returnLogin을 리턴한다.
	 * farm, company, agency 동일하게 처리한다.
	 */
	public LoginDb oneSelectFarmMember(LoginDb loginDb) {
		LoginDb returnLogin = loginDao.oneSelectFarmMember(loginDb);
		returnLogin.setLevel("farm");
		/*
		 * id와 boss가 일치한다면 boss를 boss로 셋팅
		 * 일치하지 않는다면 null로 셋팅하는 조건문
		 */
		if(returnLogin.getBoss().equals(returnLogin.getId())) {
			returnLogin.setBoss("boss");
		} else {
			returnLogin.setBoss(null);
		}
		
		return returnLogin;
	}

	public LoginDb oneSelectCompanyMember(LoginDb loginDb) {
		LoginDb returnLogin = loginDao.oneSelectCompanyMember(loginDb);
		returnLogin.setLevel("company");
		
		if(returnLogin.getBoss().equals(returnLogin.getId())) {
			returnLogin.setBoss("boss");
		} else {
			returnLogin.setBoss(null);
		}
		
		return returnLogin;
	}

	public LoginDb oneSelectAgencyMember(LoginDb loginDb) {
		LoginDb returnLogin = loginDao.oneSelectAgencyMember(loginDb);
		returnLogin.setLevel("agency");
		
		if(returnLogin.getBoss().equals(returnLogin.getId())) {
			returnLogin.setBoss("boss");
		} else {
			returnLogin.setBoss(null);
		}
		
		return returnLogin;
	}
}
