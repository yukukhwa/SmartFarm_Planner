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
	 * oneSelectFarmMember에 loginDb를 입력하여 나온 결과값을 리턴한다.
	 */
	public LoginDb oneSelectFarmMember(LoginDb loginDb) {
		return loginDao.oneSelectFarmMember(loginDb);
	}
}
