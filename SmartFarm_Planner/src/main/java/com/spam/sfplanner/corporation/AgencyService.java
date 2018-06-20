/*나성수*/
package com.spam.sfplanner.corporation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.user.AgencyMemberDao;
import com.spam.sfplanner.user.AgencyMember;
import com.spam.sfplanner.user.AgencyMemberRequest;
/*
 * 관리기관 서비스
 */
@Transactional
@Service
public class AgencyService {
	
	@Autowired
	private AgencyDao agencyDao;
	
	@Autowired
	private AgencyMemberDao agencyMemberDao;
	
	/**
	 * 관리기관 수정 처리 서비스
	 * @param 관리기관 수정 화면에서 받아온 데이터
	 * @return 실행 결과
	 */
	public int updateAgency(AgencyMemberRequest agencyMemberRequest) {
		int idCheck = 0;
		for(AgencyMember agencyMember : agencyMemberDao.listSelectAgencyMember(agencyMemberRequest.getaName())) {
			/*
			 * 해당 아이디가 해당 관리기관에 존재할때
			 */
			if(agencyMemberRequest.getaMemberId().equals(agencyMember.getaMemberId())) {
				idCheck = 1;
			}
		}
		if(idCheck == 0) {// 해당 아이디는 해당 관리기관에 존재하지 않을때
			return 0;
		}
		agencyDao.updateAgency(agencyMemberRequest);
		return 1;
	}
	
	/**
	 * 관리기관 수정 화면 출력 서비스
	 * @param 해당 관리기관명
	 * @return 해당 관리기관 상세내용
	 */
	public Agency updateAgency(String aName) {
		return agencyDao.oneSelectAgency(aName);
	}
	
	/**
	 * 관리기관 삭제처리 서비스
	 * @param 해당 관리기관코드
	 */
	public void deleteAgency(int aNumber,String aName) {
		for(AgencyMember agencyMember : agencyMemberDao.listSelectAgencyMember(aName)) {
			agencyMemberDao.deleteAgencyMember(agencyMember.getaMemberId());
		}
		agencyDao.deleteAgency(aNumber);
	}
	
	/**
	 * 선택한 관리기관의 상세내용 출력 서비스
	 * @param 선택한 관리기관명
	 * @return 선택한 관리기관의 상세내용
	 */
	public Agency oneSelectAgency(String aName) {
		return agencyDao.oneSelectAgency(aName);
	}
	
	/**
	 * 검색한 관리기관 리스트 출력 서비스
	 * @param 검색한 관리기관명
	 * @return 관리기관 리스트
	 */
	public List<String> listSelectAgency(String aName) {
		return agencyDao.listSelectAgency("%"+aName+"%");
	}
	
	/**
	 * 등록된 모든 관리기관리스트 출력 서비스
	 * @return 모든 관리기관 리스트
	 */
	public List<String> listSelectAgency() {
		return agencyDao.listSelectAgency();
	}
	
	public Map<String, Object> nameOrNumberCheck(String aName) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aName", aName);
		map.put("column", "관리기관명");
		String result = agencyDao.nameOrNumberCheck(map);
		map.clear();
		if(result == null) {
			System.out.println(aName+"해당 관리기관명은 등록되어있지 않습니다.");
			map.put("TF", "T");
			map.put("result", "해당 등록기관명은 등록가능합니다.");
			return map;// 해당 관리기관명으로 가입가능
		}
		System.out.println(aName+"해당 관리기관명은 등록되어있습니다.");
		map.put("TF", "F");
		map.put("result", result);
		return map;// 해당 관리기관명으로 가입불가능
	}
	
	/**
	 * 관리기관코드 존재여부 확인 서비스
	 * @param map 
	 * @param 관리기관코드
	 * @return 관리기관 존재여부 결과
	 */
	public Map<String, Object> nameOrNumberCheck(int aNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aNumber", aNumber);
		map.put("column", "관리기관넘버");
		String result = agencyDao.nameOrNumberCheck(map);
		map.clear();
		if(result == null) {
			System.out.println(aNumber+"해당관리기관코드는 존재하지 않습니다.");
			map.put("TF", "F");
			map.put("result", "해당기관은 존재하지 않습니다.");
			return map;// 해당 관리기관코드로 가입불가능
		}
		System.out.println(aNumber+"해당관리기관코드는 존재합니다.");
		map.put("TF", "T");
		map.put("result", result);
		return map;// 해당 관리기관코드로 가입가능
	}
	
	/**
	 * 관리기관 등록 처리 서비스
	 * @param 관리기관 등록정보
	 */
	public void insertAgency(AgencyMemberRequest agencyMemberRequest) {
		agencyDao.insertAgency(agencyMemberRequest);
	}
}
