/* [김재희] */
package com.spam.sfplanner.user;


import java.sql.Date;

import com.spam.sfplanner.corporation.Farm;

public class FarmMember {
	private String fMemberId; // 농가 회원 아이디
	private Farm farm; // 농가
	private String fMemberPw; // 농가 회원 비밀번호
	private String fMemberName; // 농가 회원 이름
	private String fMemberPhone; // 농가 회원 전화번호
	private String fMemberGender; // 농가 회원 성별
	private String fMemberEmail; // 농가 회원 이메일
	private String fMemberPrivacy; // 농가 회원 정보 제공 동의
	private String fMemberDoroaddress; // 농가 회원 도로명주소
	private String fMemberJibunaddress; // 농가 회원 지번주소
	private String fMemberDetailaddress; // 농가 회원 상세주소
	private Date fMemberRegistdate; // 농가 회원 등록일
	public String getfMemberId() {
		return fMemberId;
	}
	public void setfMemberId(String fMemberId) {
		this.fMemberId = fMemberId;
	}
	public Farm getFarm() {
		return farm;
	}
	public void setFarm(Farm farm) {
		this.farm = farm;
	}
	public String getfMemberPw() {
		return fMemberPw;
	}
	public void setfMemberPw(String fMemberPw) {
		this.fMemberPw = fMemberPw;
	}
	public String getfMemberName() {
		return fMemberName;
	}
	public void setfMemberName(String fMemberName) {
		this.fMemberName = fMemberName;
	}
	public String getfMemberPhone() {
		return fMemberPhone;
	}
	public void setfMemberPhone(String fMemberPhone) {
		this.fMemberPhone = fMemberPhone;
	}
	public String getfMemberGender() {
		return fMemberGender;
	}
	public void setfMemberGender(String fMemberGender) {
		this.fMemberGender = fMemberGender;
	}
	public String getfMemberEmail() {
		return fMemberEmail;
	}
	public void setfMemberEmail(String fMemberEmail) {
		this.fMemberEmail = fMemberEmail;
	}
	public String getfMemberPrivacy() {
		return fMemberPrivacy;
	}
	public void setfMemberPrivacy(String fMemberPrivacy) {
		this.fMemberPrivacy = fMemberPrivacy;
	}
	public String getfMemberDoroaddress() {
		return fMemberDoroaddress;
	}
	public void setfMemberDoroaddress(String fMemberDoroaddress) {
		this.fMemberDoroaddress = fMemberDoroaddress;
	}
	public String getfMemberJibunaddress() {
		return fMemberJibunaddress;
	}
	public void setfMemberJibunaddress(String fMemberJibunaddress) {
		this.fMemberJibunaddress = fMemberJibunaddress;
	}
	public String getfMemberDetailaddress() {
		return fMemberDetailaddress;
	}
	public void setfMemberDetailaddress(String fMemberDetailaddress) {
		this.fMemberDetailaddress = fMemberDetailaddress;
	}
	public Date getfMemberRegistdate() {
		return fMemberRegistdate;
	}
	public void setfMemberRegistdate(Date fMemberRegistdate) {
		this.fMemberRegistdate = fMemberRegistdate;
	}
	
	@Override
	public String toString() {
		return "FarmMember [fMemberId=" + fMemberId + ", farm=" + farm + ", fMemberPw=" + fMemberPw + ", fMemberName="
				+ fMemberName + ", fMemberPhone=" + fMemberPhone + ", fMemberGender=" + fMemberGender
				+ ", fMemberEmail=" + fMemberEmail + ", fMemberPrivacy=" + fMemberPrivacy + ", fMemberDoroaddress="
				+ fMemberDoroaddress + ", fMemberJibunaddress=" + fMemberJibunaddress + ", fMemberDetailaddress="
				+ fMemberDetailaddress + ", fMemberRegistdate=" + fMemberRegistdate + "]";
	}
	
}
