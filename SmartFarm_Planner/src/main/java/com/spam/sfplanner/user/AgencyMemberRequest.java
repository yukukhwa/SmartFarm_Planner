/*나성수*/
package com.spam.sfplanner.user;

/*
 * addAgencyMember화면 테이블
 */
public class AgencyMemberRequest {
	private String aMemberId; //관리자아이디
	private String aMemberPw; //비밀번호
	private String aMemberName; //실명
	private String aMemberPhone; //연락처
	private String aMemberGender; //성별
	private String aMemberEmail; //이메일
	private String aMemberPrivacy; //개인정보동의
	private String aMemberDoroaddress; //관리기관회원도로명주소
	private String aMemberJibunaddress; //관리기관회원지번주소
	private String aMemberDetailaddress; //관리기관회원상세주소
	private int aNumber; //관리기관통합넘버
	private String aName; //관리기관명
	private String aDoroaddress; //관리기관도로명주소
	private String aJibunaddress; //관리기관지번주소
	private String aPhone; //관리기관연락처
	public String getaMemberId() {
		return aMemberId;
	}
	public void setaMemberId(String aMemberId) {
		this.aMemberId = aMemberId;
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
	@Override
	public String toString() {
		return "AgencyMemberRequest [aMemberId=" + aMemberId + ", aMemberPw=" + aMemberPw + ", aMemberName=" + aMemberName
				+ ", aMemberPhone=" + aMemberPhone + ", aMemberGender=" + aMemberGender + ", aMemberEmail="
				+ aMemberEmail + ", aMemberPrivacy=" + aMemberPrivacy + ", aMemberDoroaddress=" + aMemberDoroaddress
				+ ", aMemberJibunaddress=" + aMemberJibunaddress + ", aMemberDetailaddress=" + aMemberDetailaddress
				+ ", aNumber=" + aNumber + ", aName=" + aName + ", aDoroaddress=" + aDoroaddress + ", aJibunaddress="
				+ aJibunaddress + ", aPhone=" + aPhone + "]";
	}
}
