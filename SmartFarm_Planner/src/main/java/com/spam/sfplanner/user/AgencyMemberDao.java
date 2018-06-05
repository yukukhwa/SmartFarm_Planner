package com.spam.sfplanner.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/*
 * 관리기관 회원관리 Dao
 */
@Repository
public class AgencyMemberDao {
	
	private static final String NAMESPACE = "com.spam.sfplanner.user.AgencyMemberMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public String IdCheck(String aMemberId) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"idCheck", aMemberId);
	}
	
	/**
	 * 관리기관 회원가입화면 처리Dao
	 * @param agencyMemberView
	 */
	public void InsertAgencyMember(AgencyMemberView agencyMemberView) {
		sqlSessionTemplate.insert(NAMESPACE+"InsertAgencyMember", agencyMemberView);
	}
}
