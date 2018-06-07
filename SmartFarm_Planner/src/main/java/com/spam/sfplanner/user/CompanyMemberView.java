package com.spam.sfplanner.user;

public class CompanyMemberView {
	private int cNumber;  //업체통합넘버
	private int dealNumber; //거래처 넘버
	private String cName; //업체명
	private String cMemberId; //업체회원아이디
	private String cDoroAddress; //업체도로명주소
	private String cJibunaddress; //업체지번주소
	private String cPhone; //업체연락처
	private double cParty; //업체인원
	private String cMemberPw; //업체회원비번
	private String cMemberName; //업체회원이름
	private String cmemberPhone; //업체회원연락처
	private String cMemberGender; //업체회원성별
	private String cMemberEmail; //업체회원이메일
	private String cMemberPrivacy; //업체회원개인정보동의
	private String cMemberDoroaddress; //업체회원도로명주소
	private String cMemberJibunaddress; //업체회원지번주소
	private String cMemberDetailaddress; //업체회원상세주소
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
	public String getcDoroAddress() {
		return cDoroAddress;
	}
	public void setcDoroAddress(String cDoroAddress) {
		this.cDoroAddress = cDoroAddress;
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
	public double getcParty() {
		return cParty;
	}
	public void setcParty(double cParty) {
		this.cParty = cParty;
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
	public String getCmemberPhone() {
		return cmemberPhone;
	}
	public void setCmemberPhone(String cmemberPhone) {
		this.cmemberPhone = cmemberPhone;
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
	@Override
	public String toString() {
		return "CompanyMemberView [cNumber=" + cNumber + ", dealNumber=" + dealNumber + ", cName=" + cName
				+ ", cMemberId=" + cMemberId + ", cDoroAddress=" + cDoroAddress + ", cJibunaddress=" + cJibunaddress
				+ ", cPhone=" + cPhone + ", cParty=" + cParty + ", cMemberPw=" + cMemberPw + ", cMemberName="
				+ cMemberName + ", cmemberPhone=" + cmemberPhone + ", cMemberGender=" + cMemberGender
				+ ", cMemberEmail=" + cMemberEmail + ", cMemberPrivacy=" + cMemberPrivacy + ", cMemberDoroaddress="
				+ cMemberDoroaddress + ", cMemberJibunaddress=" + cMemberJibunaddress + ", cMemberDetailaddress="
				+ cMemberDetailaddress + "]";
	}
	
	
	
	
	

}
