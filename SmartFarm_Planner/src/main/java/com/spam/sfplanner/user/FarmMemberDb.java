/* [김재희] */
package com.spam.sfplanner.user;

import java.util.Date;

import com.spam.sfplanner.corporation.FarmDb;

public class FarmMemberDb {
	private String fMemberId; // f_member_id
	private FarmDb farmDb;
	private int fNumber; // f_number
	private String fMemberPw; // f_member_pw
	private String fMemberName; // f_member_name
	private String fMemberPhone; // f_member_phone
	private String fMemberGender; // f_member_gender
	private String fMemberEmail; // f_member_email
	private String fMemberPrivacy; // f_member_privacy
	private String fMemberDoroaddress; // f_member_doroaddress
	private String fMemberJibunaddress; // f_member_jibunaddress
	private String fMemberDetailaddress; // f_member_detailaddress
	private Date fMemberRegistdate; // f_member_registdate;
	public String getfMemberId() {
		return fMemberId;
	}
	public void setfMemberId(String fMemberId) {
		this.fMemberId = fMemberId;
	}
	public FarmDb getFarmDb() {
		return farmDb;
	}
	public void setFarmDb(FarmDb farmDb) {
		this.farmDb = farmDb;
	}
	public int getfNumber() {
		return fNumber;
	}
	public void setfNumber(int fNumber) {
		this.fNumber = fNumber;
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
		return "FarmMemberDb [fMemberId=" + fMemberId + ", farmDb=" + farmDb + ", fNumber=" + fNumber + ", fMemberPw="
				+ fMemberPw + ", fMemberName=" + fMemberName + ", fMemberPhone=" + fMemberPhone + ", fMemberGender="
				+ fMemberGender + ", fMemberEmail=" + fMemberEmail + ", fMemberPrivacy=" + fMemberPrivacy
				+ ", fMemberDoroaddress=" + fMemberDoroaddress + ", fMemberJibunaddress=" + fMemberJibunaddress
				+ ", fMemberDetailaddress=" + fMemberDetailaddress + ", fMemberRegistdate=" + fMemberRegistdate + "]";
	}
	
}
