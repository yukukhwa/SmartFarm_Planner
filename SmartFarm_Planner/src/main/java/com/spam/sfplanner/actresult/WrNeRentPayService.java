//[유국화]
package com.spam.sfplanner.actresult;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WrNeRentPayService {
@Autowired private WrNeRentPayDao wrNeRentPayDao;
	
	public List<WrNeRentPay> listselectWrNeRentPay(){
		return wrNeRentPayDao.listselectWrNeRentPay();		
	}
}
