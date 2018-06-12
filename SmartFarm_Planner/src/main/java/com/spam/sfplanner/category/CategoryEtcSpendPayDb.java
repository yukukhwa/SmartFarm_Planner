/*배건혜*/
package com.spam.sfplanner.category;

public class CategoryEtcSpendPayDb {
	
	private int etcspendpayNumber;
	private int themeNumber;
	private String etcspendpayName;
	private int fNumber;
	private String fMemberId;
	public int getEtcspendpayNumber() {
		return etcspendpayNumber;
	}
	public void setEtcspendpayNumber(int etcspendpayNumber) {
		this.etcspendpayNumber = etcspendpayNumber;
	}
	public int getThemeNumber() {
		return themeNumber;
	}
	public void setThemeNumber(int themeNumber) {
		this.themeNumber = themeNumber;
	}
	public String getEtcspendpayName() {
		return etcspendpayName;
	}
	public void setEtcspendpayName(String etcspendpayName) {
		this.etcspendpayName = etcspendpayName;
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
	@Override
	public String toString() {
		return "CategoryEtcSpendPayDb [etcspendpayNumber=" + etcspendpayNumber + ", themeNumber=" + themeNumber
				+ ", etcspendpayName=" + etcspendpayName + ", fNumber=" + fNumber + ", fMemberId=" + fMemberId + "]";
	}
	
	
}
