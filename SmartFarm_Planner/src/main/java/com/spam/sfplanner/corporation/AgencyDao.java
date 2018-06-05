/*나성수*/
package com.spam.sfplanner.corporation;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spam.sfplanner.user.AgencyMemberView;

/*
 * 관리기관관리 Dao
 */
@Repository
public class AgencyDao {

	private static final String NAMESPACE = "com.spam.sfplanner.corporation.AgencyMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void InsertAgency(AgencyMemberView agencyMemberView) {
		sqlSessionTemplate.insert(NAMESPACE+"InsertAgency", agencyMemberView);
	}
}