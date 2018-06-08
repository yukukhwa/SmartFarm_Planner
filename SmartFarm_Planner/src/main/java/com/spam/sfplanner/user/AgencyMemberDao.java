/*나성수*/
package com.spam.sfplanner.user;

import java.util.List;

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
	
	/**
	 * 관리기관 회원 한명 탈퇴 처리 Dao
	 * @param 해당 회원 아이디
	 */
	public void deleteAgencyMember(String aMemberId) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteAgencyMember", aMemberId);
	}
	
	/**
	 * 관리기관 회원 한명의 상세내용 출력 Dao
	 * @param 해당회원아이디
	 * @return 해당회원의 상세내용
	 */
	public AgencyMemberDb oneSelectAgencyMember(String aMemberId) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"oneSelectAgencyMember", aMemberId);
	}
	
	/**
	 * 해당 관리기관 직원리스트 출력 Dao
	 * @param 해당 관리기관명
	 * @return 해당 관리기관 직원리스트
	 */
	public List<AgencyMemberDb> listSelectAgencyMember(String aName) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectAgencyMember", aName);
	}
	
	/**
	 * 관리기관 회원가입시 아이디 중복체크 처리 Dao
	 * @param 화면에서 받아온 아이디
	 * @return 중복체크 결과
	 */
	public String idCheck(String aMemberId) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"idCheck", aMemberId);
	}
	
	/**
	 * 관리기관 회원가입화면 처리Dao
	 * @param agencyMemberView
	 */
	public void insertAgencyMember(AgencyMemberView agencyMemberView) {
		sqlSessionTemplate.insert(NAMESPACE+"InsertAgencyMember", agencyMemberView);
	}
}
