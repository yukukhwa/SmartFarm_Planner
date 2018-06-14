/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.Date;

/*
 * 실행결과리스트 목록에서 조인해서 계획명을 가져와 사용하기위한 db
 */
public class ActResultRequestDb {
	private String ppNamePlanname; //계획명
	private int ppResultlistNumber; // 실행결과 리스트 기본키
	private int fNumber; // 농가통합넘버 외래키
	private Date ppResultlistDate; // 실행결과리스트 작성일
	
	public String getPpNamePlanname() {
		return ppNamePlanname;
	}
	public void setPpNamePlanname(String ppNamePlanname) {
		this.ppNamePlanname = ppNamePlanname;
	}
	public int getPpResultlistNumber() {
		return ppResultlistNumber;
	}
	public void setPpResultlistNumber(int ppResultlistNumber) {
		this.ppResultlistNumber = ppResultlistNumber;
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
	
	@Override
	public String toString() {
		return "ActResultRequestDb [ppNamePlanname=" + ppNamePlanname + ", ppResultlistNumber=" + ppResultlistNumber
				+ ", fNumber=" + fNumber + ", ppResultlistDate=" + ppResultlistDate + "]";
	}
}
