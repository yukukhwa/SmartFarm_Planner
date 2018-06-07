//배건혜
package com.spam.sfplanner.user;

import java.util.Date;

public class CompanyMemberDb {
	private String cMemberId;  //업체회원아이디
	private int cNumber;  //업체통합넘버
	private String cMemberPw;  //비밀번호
	private String cMemberName;  //실명
	private String cMemberPhone;  //연락처
	private String cMemberGender;  //성별
	private String cMemberEmail;  //이메일
	private String cMemberPrivacy;  //개인정보동의
	private String cMemberDoroaddress;  //업체회원도로명주소
	private String cMemberJibunaddress;  //업체회원지번주소
	private String cMemberDetailaddress;  //업체지번주소
	private Date cMemberRegistdate;  //가입일자
	
	public String getcMemberId() {
		return cMemberId;
	}
	public void setcMemberId(String cMemberId) {
		this.cMemberId = cMemberId;
	}
	public int getcNumber() {
		return cNumber;
	}
	public void setcNumber(int cNumber) {
		this.cNumber = cNumber;
	}
	public String getcMemberPw() {
		return cMemberPw;
	}
	public void setcMemberPw(String cMemberPw) {
		this.cMemberPw = cMemberPw;
	}
	public String getcMemberName() {
		return cMemberName;
	}
	public void setcMemberName(String cMemberName) {
		this.cMemberName = cMemberName;
	}
	public String getcMemberPhone() {
		return cMemberPhone;
	}
	public void setcMemberPhone(String cMemberPhone) {
		this.cMemberPhone = cMemberPhone;
	}
	public String getcMemberGender() {
		return cMemberGender;
	}
	public void setcMemberGender(String cMemberGender) {
		this.cMemberGender = cMemberGender;
	}
	public String getcMemberEmail() {
		return cMemberEmail;
	}
	public void setcMemberEmail(String cMemberEmail) {
		this.cMemberEmail = cMemberEmail;
	}
	public String getcMemberPrivacy() {
		return cMemberPrivacy;
	}
	public void setcMemberPrivacy(String cMemberPrivacy) {
		this.cMemberPrivacy = cMemberPrivacy;
	}
	public String getcMemberDoroaddress() {
		return cMemberDoroaddress;
	}
	public void setcMemberDoroaddress(String cMemberDoroaddress) {
		this.cMemberDoroaddress = cMemberDoroaddress;
	}
	public String getcMemberJibunaddress() {
		return cMemberJibunaddress;
	}
	public void setcMemberJibunaddress(String cMemberJibunaddress) {
		this.cMemberJibunaddress = cMemberJibunaddress;
	}
	public String getcMemberDetailaddress() {
		return cMemberDetailaddress;
	}
	public void setcMemberDetailaddress(String cMemberDetailaddress) {
		this.cMemberDetailaddress = cMemberDetailaddress;
	}
	public Date getcMemberRegistdate() {
		return cMemberRegistdate;
	}
	public void setcMemberRegistdate(Date cMemberRegistdate) {
		this.cMemberRegistdate = cMemberRegistdate;
	}
	@Override
	public String toString() {
		return "CompanyMemberDb [cMemberId=" + cMemberId + ", cNumber=" + cNumber + ", cMemberPw=" + cMemberPw
				+ ", cMemberName=" + cMemberName + ", cMemberPhone=" + cMemberPhone + ", cMemberGender=" + cMemberGender
				+ ", cMemberEmail=" + cMemberEmail + ", cMemberPrivacy=" + cMemberPrivacy + ", cMemberDoroaddress="
				+ cMemberDoroaddress + ", cMemberJibunaddress=" + cMemberJibunaddress + ", cMemberDetailaddress="
				+ cMemberDetailaddress + ", cMemberRegistdate=" + cMemberRegistdate + "]";
	}
	
	
	
	
	

}
