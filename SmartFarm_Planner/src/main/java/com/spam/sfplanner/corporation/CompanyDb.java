//배건혜
package com.spam.sfplanner.corporation;

import java.util.Date;

public class CompanyDb {
	private int cNumber;  //업체통합넘버
	private int dealNumber;  //거래처넘버
	private String cName;  //업체명
	private String cMemberId;  //업체회원아이디
	private String cDoroaddress;  //업체도로명주소
	private String cJibunaddress;  //업체지번주소
	private String cPhone;  //업체연락처
	private double cRegistdate;  //업체등록일자
	private Date cParty;  //업체인원
	
	public int getcNumber() {
		return cNumber;
	}
	public void setcNumber(int cNumber) {
		this.cNumber = cNumber;
	}
	public int getDealNumber() {
		return dealNumber;
	}
	public void setDealNumber(int dealNumber) {
		this.dealNumber = dealNumber;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcMemberId() {
		return cMemberId;
	}
	public void setcMemberId(String cMemberId) {
		this.cMemberId = cMemberId;
	}
	public String getcDoroaddress() {
		return cDoroaddress;
	}
	public void setcDoroaddress(String cDoroaddress) {
		this.cDoroaddress = cDoroaddress;
	}
	public String getcJibunaddress() {
		return cJibunaddress;
	}
	public void setcJibunaddress(String cJibunaddress) {
		this.cJibunaddress = cJibunaddress;
	}
	public String getcPhone() {
		return cPhone;
	}
	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}
	public double getcRegistdate() {
		return cRegistdate;
	}
	public void setcRegistdate(double cRegistdate) {
		this.cRegistdate = cRegistdate;
	}
	public Date getcParty() {
		return cParty;
	}
	public void setcParty(Date cParty) {
		this.cParty = cParty;
	}
	@Override
	public String toString() {
		return "CompanyDb [cNumber=" + cNumber + ", dealNumber=" + dealNumber + ", cName=" + cName + ", cMemberId="
				+ cMemberId + ", cDoroaddress=" + cDoroaddress + ", cJibunaddress=" + cJibunaddress + ", cPhone="
				+ cPhone + ", cRegistdate=" + cRegistdate + ", cParty=" + cParty + "]";
	}
	
	
	
}
