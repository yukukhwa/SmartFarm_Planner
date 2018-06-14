/*나성수*/
package com.spam.sfplanner.plan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class WoInsurancePayService {

	@Autowired
	private WoInsurancePay woInsurancePay;
}
