/*나성수*/
package com.spam.sfplanner.corporation;

import java.util.List;

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
	
	/**
	 * 관리기관 삭제처리 Dao
	 * @param 해당 관리기관 코드
	 */
	public void deleteAgency(int aNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteAgency", aNumber);
	}
	
	/**
	 * 선택한 관리기관의 산세내용 출력 Dao
	 * @param 선택한 관리기관명
	 * @return 선택한 관리기관의 상세내용
	 */
	public AgencyDb oneSelectAgency(String aName) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"oneSelectAgency", aName);
	}
	
	/**
	 * 검색된 관리기관 리스트 출력 Dao
	 * @param 관리기관명
	 * @return 검색된 관리기관 리스트
	 */
	public List<String> listSelectAgency(String aName) {
		return sqlSessionTemplate.selectList(NAMESPACE+"searchListSelectAgency", aName);
	}
	
	/**
	 * 등록된 모든 관리기관 리스트 출력 Dao
	 * @return 모든 관리기관 리스트
	 */
	public List<String> listSelectAgency() {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectAgency");
	}
	
	/**
	 * 관리기관 등록처리 Dao
	 * @param 관리기관등록정보
	 */
	public void insertAgency(AgencyMemberView agencyMemberView) {
		sqlSessionTemplate.insert(NAMESPACE+"insertAgency", agencyMemberView);
	}
	
	/**
	 * 관리기관코드 존재여부 확인 Dao
	 * @param 관리기관코드
	 * @return 관리기관 존재여부결과
	 */
	public String numberCheck(int aNumber) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"aNumber", aNumber);
	}
}
