//[유국화]
package com.spam.sfplanner.actresult;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WrNeRentPayDao {
	@Autowired private SqlSessionTemplate sqlsession;
	final private String nameSpace = "com.spam.sfplanner.actresult.WrNeRentPayMapper.";
	
	public List<WrNeRentPay> listselectWrNeRentPay(){
		return sqlsession.selectList(nameSpace+"listselectWrNeRentPay");		
	}
}
