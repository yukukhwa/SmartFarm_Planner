/*나성수*/
package com.spam.sfplanner.corporation;

import java.sql.Date;

import com.spam.sfplanner.user.AgencyMember;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_agency(관리기관 테이블)
 */
public class Agency {
	private int aNumber; //관리기관통합넘버
	private String aName; //관리기관명
	private AgencyMember agencyMember; //관리기관 회원 테이블
	private String aDoroaddress; //관리기관도로명주소
	private String aJibunaddress; //관리기관지번주소
	private String aPhone; //관리기관연락처
	private Date aRegistdate; //관리기관등록일자
	public int getaNumber() {
		return aNumber;
	}
	public void setaNumber(int aNumber) {
		this.aNumber = aNumber;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public AgencyMember getAgencyMemberDb() {
		return agencyMember;
	}
	public void setAgencyMemberDb(AgencyMember agencyMember) {
		this.agencyMember = agencyMember;
	}
	public String getaDoroaddress() {
		return aDoroaddress;
	}
	public void setaDoroaddress(String aDoroaddress) {
		this.aDoroaddress = aDoroaddress;
	}
	public String getaJibunaddress() {
		return aJibunaddress;
	}
	public void setaJibunaddress(String aJibunaddress) {
		this.aJibunaddress = aJibunaddress;
	}
	public String getaPhone() {
		return aPhone;
	}
	public void setaPhone(String aPhone) {
		this.aPhone = aPhone;
	}
	public Date getaRegistdate() {
		return aRegistdate;
	}
	public void setaRegistdate(Date aRegistdate) {
		this.aRegistdate = aRegistdate;
	}
	@Override
	public String toString() {
		return "Agency [aNumber=" + aNumber + ", aName=" + aName + ", agencyMember=" + agencyMember
				+ ", aDoroaddress=" + aDoroaddress + ", aJibunaddress=" + aJibunaddress + ", aPhone=" + aPhone
				+ ", aRegistdate=" + aRegistdate + "]";
	}
}
