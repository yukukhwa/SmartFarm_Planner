/*나성수*/
package com.spam.sfplanner.corporation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.AgencyMemberView;
/*
 * 관리기관 서비스
 */
@Transactional
@Service
public class AgencyService {
	
	@Autowired
	private AgencyDao agencyDao;
	
	/**
	 * 선택한 관리기관의 상세내용 출력 서비스
	 * @param 선택한 관리기관명
	 * @return 선택한 관리기관의 상세내용
	 */
	public AgencyDb oneSelectAgency(String aName) {
		return agencyDao.oneSelectAgency(aName);
	}
	
	/**
	 * 검색한 관리기관 리스트 출력 서비스
	 * @param 검색한 관리기관명
	 * @return 관리기관 리스트
	 */
	public List<String> listSelectAgency(String aName) {
		if(aName.equals("")) {
			return agencyDao.listSelectAgency();
		}
		return agencyDao.listSelectAgency("%"+aName+"%");
	}
	
	/**
	 * 등록된 모든 관리기관리스트 출력 서비스
	 * @return 모든 관리기관 리스트
	 */
	public List<String> listSelectAgency() {
		return agencyDao.listSelectAgency();
	}
	
	/**
	 * 관리기관코드 존재여부 확인 서비스
	 * @param 관리기관코드
	 * @return 관리기관 존재여부 결과
	 */
	public String numberCheck(int aNumber) {
		return agencyDao.numberCheck(aNumber);
	}
	
	/**
	 * 관리기관 등록 처리 서비스
	 * @param 관리기관 등록정보
	 */
	public void insertAgency(AgencyMemberView agencyMemberView) {
		agencyDao.insertAgency(agencyMemberView);
	}
}
