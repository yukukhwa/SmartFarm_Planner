/* [김재희] */
package com.spam.sfplanner.corporation;

import java.sql.Date;

import com.spam.sfplanner.user.FarmMember;

public class Farm {
	private int fNumber; // 농가통합넘버
	private FarmMember farmMember; // 농가멤버
	private String fName; // 농가 이름
	private String fPhone; // 농가 대표번호
	private String fDoroaddress; // 농가 도로명주소
	private String fJibunaddress; // 농가 지번주소
	private double fParty; // 농가 인원
	private Date fRegistdate; // 농가 등록날짜
	
	public int getfNumber() {
		return fNumber;
	}
	public void setfNumber(int fNumber) {
		this.fNumber = fNumber;
	}
	public FarmMember getFarmMember() {
		return farmMember;
	}
	public void setFarmMember(FarmMember farmMember) {
		this.farmMember = farmMember;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getfPhone() {
		return fPhone;
	}
	public void setfPhone(String fPhone) {
		this.fPhone = fPhone;
	}
	public String getfDoroaddress() {
		return fDoroaddress;
	}
	public void setfDoroaddress(String fDoroaddress) {
		this.fDoroaddress = fDoroaddress;
	}
	public String getfJibunaddress() {
		return fJibunaddress;
	}
	public void setfJibunaddress(String fJibunaddress) {
		this.fJibunaddress = fJibunaddress;
	}
	public double getfParty() {
		return fParty;
	}
	public void setfParty(double fParty) {
		this.fParty = fParty;
	}
	public Date getfRegistdate() {
		return fRegistdate;
	}
	public void setfRegistdate(Date fRegistdate) {
		this.fRegistdate = fRegistdate;
	}
	
	@Override
	public String toString() {
		return "Farm [fNumber=" + fNumber + ", farmMember=" + farmMember + ", fName=" + fName + ", fPhone=" + fPhone
				+ ", fDoroaddress=" + fDoroaddress + ", fJibunaddress=" + fJibunaddress + ", fParty=" + fParty
				+ ", fRegistdate=" + fRegistdate + "]";
	}
	
}
