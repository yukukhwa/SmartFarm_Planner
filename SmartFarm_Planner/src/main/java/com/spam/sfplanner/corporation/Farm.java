/* [김재희] */
package com.spam.sfplanner.corporation;

import java.util.Date;

import com.spam.sfplanner.user.FarmMember;

public class Farm {
	private int fNumber; // f_number
	private FarmMember farmMember;
	private String fName; // f_name
	private String fMemberId; // f_member_id
	private String fPhone; // f_phone
	private String fDoroaddress; // f_doroaddress
	private String fJibunaddress; // f_jibunaddress
	private double fParty; // f_party
	private Date fRegistdate; // f_registdate
	
	public int getfNumber() {
		return fNumber;
	}
	public void setfNumber(int fNumber) {
		this.fNumber = fNumber;
	}
	public FarmMember getFarmMemberDb() {
		return farmMember;
	}
	public void setFarmMemberDb(FarmMember farmMember) {
		this.farmMember = farmMember;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getfMemberId() {
		return fMemberId;
	}
	public void setfMemberId(String fMemberId) {
		this.fMemberId = fMemberId;
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
		return "Farm [fNumber=" + fNumber + ", farmMember=" + farmMember + ", fName=" + fName + ", fMemberId="
				+ fMemberId + ", fPhone=" + fPhone + ", fDoroaddress=" + fDoroaddress + ", fJibunaddress="
				+ fJibunaddress + ", fParty=" + fParty + ", fRegistdate=" + fRegistdate + "]";
	}
	
	
	
}
