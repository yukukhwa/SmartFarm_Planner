/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;


public class ActResult {
	private int ppResultlistNumber; // 실행결과 리스트 기본키
	private int ppNumber; // 계획서넘버 외래키
	private int fNumber; // 농가통합넘버 외래키
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	private Date ppResultlistDate; // 실행결과리스트 작성일
	private String fMemberId; // 농가회원아이디 외래키
	private List<PpWoResult> ppWoResult; // 1:N를 위한 실행결과리스트별 작업단계 리스트
	
	public int getPpResultlistNumber() {
		return ppResultlistNumber;
	}
	public void setPpResultlistNumber(int ppResultlistNumber) {
		this.ppResultlistNumber = ppResultlistNumber;
	}
	public int getPpNumber() {
		return ppNumber;
	}
	public void setPpNumber(int ppNumber) {
		this.ppNumber = ppNumber;
	}
	public int getfNumber() {
		return fNumber;
	}
	public void setfNumber(int fNumber) {
		this.fNumber = fNumber;
	}
	public Date getPpResultlistDate() {
		return ppResultlistDate;
	}
	public void setPpResultlistDate(Date ppResultlistDate) {
		this.ppResultlistDate = ppResultlistDate;
	}
	public String getfMemberId() {
		return fMemberId;
	}
	public void setfMemberId(String fMemberId) {
		this.fMemberId = fMemberId;
	}
	public List<PpWoResult> getPpWoResultDb() {
		return ppWoResult;
	}
	public void setPpWoResultDb(List<PpWoResult> ppWoResult) {
		this.ppWoResult = ppWoResult;
	}
	
	@Override
	public String toString() {
		return "ActResult [ppResultlistNumber=" + ppResultlistNumber + ", ppNumber=" + ppNumber + ", fNumber="
				+ fNumber + ", ppResultlistDate=" + ppResultlistDate + ", fMemberId=" + fMemberId + ", ppWoResult="
				+ ppWoResult + "]";
	}
}

