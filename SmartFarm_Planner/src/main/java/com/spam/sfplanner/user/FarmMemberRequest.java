/* [김재희] */
package com.spam.sfplanner.user;
// addFarmMember폼에서 받음
public class FarmMemberRequest {
	private String fName; // 농가 이름
	private String fPhone; // 농가대표번호
	private String fDoroaddress; // 농가 도로명주소
	private String fJibunaddress; // 농가 지번주소
	private double fParty; // 농가 인원
	private String fMemberPrivacy; // 농가 회원 개인정보제공동의
	private String fMemberGender; // 농가 회원 성별
	private int fNumber; // 농가통합넘버
	private String fMemberId; // 농가회원 아이디
	private String fMemberPw; // 농가 회원 비번
	private String fMemberName; // 농가회원 이름
	private String fMemberPhone; // 농가 회원 전화번호
	private String fMemberEmail; // 농가회원 이메일
	private String fMemberDoroaddress; // 농가 회원 도로명주소
	private String fMemberJibunaddress; // 농가회원 지번주소
	private String fMemberDetailaddress; // 농가 회원 상세주소
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
	public String getfMemberPrivacy() {
		return fMemberPrivacy;
	}
	public void setfMemberPrivacy(String fMemberPrivacy) {
		this.fMemberPrivacy = fMemberPrivacy;
	}
	public String getfMemberGender() {
		return fMemberGender;
	}
	public void setfMemberGender(String fMemberGender) {
		this.fMemberGender = fMemberGender;
	}
	public int getfNumber() {
		return fNumber;
	}
	public void setfNumber(int fNumber) {
		this.fNumber = fNumber;
	}
	public String getfMemberId() {
		return fMemberId;
	}
	public void setfMemberId(String fMemberId) {
		this.fMemberId = fMemberId;
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
	public String getfMemberEmail() {
		return fMemberEmail;
	}
	public void setfMemberEmail(String fMemberEmail) {
		this.fMemberEmail = fMemberEmail;
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
	@Override
	public String toString() {
		return "FarmMemberRequest [fName=" + fName + ", fPhone=" + fPhone + ", fDoroaddress=" + fDoroaddress
				+ ", fJibunaddress=" + fJibunaddress + ", fParty=" + fParty + ", fMemberPrivacy=" + fMemberPrivacy
				+ ", fMemberGender=" + fMemberGender + ", fNumber=" + fNumber + ", fMemberId=" + fMemberId
				+ ", fMemberPw=" + fMemberPw + ", fMemberName=" + fMemberName + ", fMemberPhone=" + fMemberPhone
				+ ", fMemberEmail=" + fMemberEmail + ", fMemberDoroaddress=" + fMemberDoroaddress
				+ ", fMemberJibunaddress=" + fMemberJibunaddress + ", fMemberDetailaddress=" + fMemberDetailaddress
				+ "]";
	}
	
	
}
