/*나성수*/
package com.spam.sfplanner.user;

import java.sql.Date;

import com.spam.sfplanner.corporation.Agency;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_agency_master(관리기관 회원 테이블)
 */
public class AgencyMember {
	private String aMemberId; //관리자아이디
	private Agency agency; //관리기관 테이블
	private String aMemberPw; //비밀번호
	private String aMemberName; //실명
	private String aMemberPhone; //연락처
	private String aMemberGender; //성별
	private String aMemberEmail; //이메일
	private String aMemberPrivacy; //개인정보동의
	private String aMemberDoroaddress; //관리기관회원도로명주소
	private String aMemberJibunaddress; //관리기관회원지번주소
	private String aMemberDetailaddress; //관리기관회원상세주소
	private Date aMemberRegistdate; //가입일자
	public String getaMemberId() {
		return aMemberId;
	}
	public void setaMemberId(String aMemberId) {
		this.aMemberId = aMemberId;
	}
	public Agency getAgencyDb() {
		return agency;
	}
	public void setAgencyDb(Agency agency) {
		this.agency = agency;
	}
	public String getaMemberPw() {
		return aMemberPw;
	}
	public void setaMemberPw(String aMemberPw) {
		this.aMemberPw = aMemberPw;
	}
	public String getaMemberName() {
		return aMemberName;
	}
	public void setaMemberName(String aMemberName) {
		this.aMemberName = aMemberName;
	}
	public String getaMemberPhone() {
		return aMemberPhone;
	}
	public void setaMemberPhone(String aMemberPhone) {
		this.aMemberPhone = aMemberPhone;
	}
	public String getaMemberGender() {
		return aMemberGender;
	}
	public void setaMemberGender(String aMemberGender) {
		this.aMemberGender = aMemberGender;
	}
	public String getaMemberEmail() {
		return aMemberEmail;
	}
	public void setaMemberEmail(String aMemberEmail) {
		this.aMemberEmail = aMemberEmail;
	}
	public String getaMemberPrivacy() {
		return aMemberPrivacy;
	}
	public void setaMemberPrivacy(String aMemberPrivacy) {
		this.aMemberPrivacy = aMemberPrivacy;
	}
	public String getaMemberDoroaddress() {
		return aMemberDoroaddress;
	}
	public void setaMemberDoroaddress(String aMemberDoroaddress) {
		this.aMemberDoroaddress = aMemberDoroaddress;
	}
	public String getaMemberJibunaddress() {
		return aMemberJibunaddress;
	}
	public void setaMemberJibunaddress(String aMemberJibunaddress) {
		this.aMemberJibunaddress = aMemberJibunaddress;
	}
	public String getaMemberDetailaddress() {
		return aMemberDetailaddress;
	}
	public void setaMemberDetailaddress(String aMemberDetailaddress) {
		this.aMemberDetailaddress = aMemberDetailaddress;
	}
	public Date getaMemberRegistdate() {
		return aMemberRegistdate;
	}
	public void setaMemberRegistdate(Date aMemberRegistdate) {
		this.aMemberRegistdate = aMemberRegistdate;
	}
	@Override
	public String toString() {
		return "AgencyMember [aMemberId=" + aMemberId + ", agency=" + agency + ", aMemberPw=" + aMemberPw
				+ ", aMemberName=" + aMemberName + ", aMemberPhone=" + aMemberPhone + ", aMemberGender=" + aMemberGender
				+ ", aMemberEmail=" + aMemberEmail + ", aMemberPrivacy=" + aMemberPrivacy + ", aMemberDoroaddress="
				+ aMemberDoroaddress + ", aMemberJibunaddress=" + aMemberJibunaddress + ", aMemberDetailaddress="
				+ aMemberDetailaddress + ", aMemberRegistdate=" + aMemberRegistdate + "]";
	}
}
