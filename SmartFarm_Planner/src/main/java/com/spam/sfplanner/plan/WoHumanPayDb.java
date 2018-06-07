package com.spam.sfplanner.plan;

import java.util.Date;

public class WoHumanPayDb {
	private int eHumanpayNumber;
	private int themeNumber;
	private int ppWorkNumber;
	private String eHumanpayName;
	private String eHumanpayResidentnumber;
	private double eHumanpayExpectpay;
	private Date eHumanpayExpectday;
	private String eHumanpaySecret;
	public int geteHumanpayNumber() {
		return eHumanpayNumber;
	}
	public void seteHumanpayNumber(int eHumanpayNumber) {
		this.eHumanpayNumber = eHumanpayNumber;
	}
	public int getThemeNumber() {
		return themeNumber;
	}
	public void setThemeNumber(int themeNumber) {
		this.themeNumber = themeNumber;
	}
	public int getPpWorkNumber() {
		return ppWorkNumber;
	}
	public void setPpWorkNumber(int ppWorkNumber) {
		this.ppWorkNumber = ppWorkNumber;
	}
	public String geteHumanpayName() {
		return eHumanpayName;
	}
	public void seteHumanpayName(String eHumanpayName) {
		this.eHumanpayName = eHumanpayName;
	}
	public String geteHumanpayResidentnumber() {
		return eHumanpayResidentnumber;
	}
	public void seteHumanpayResidentnumber(String eHumanpayResidentnumber) {
		this.eHumanpayResidentnumber = eHumanpayResidentnumber;
	}
	public double geteHumanpayExpectpay() {
		return eHumanpayExpectpay;
	}
	public void seteHumanpayExpectpay(double eHumanpayExpectpay) {
		this.eHumanpayExpectpay = eHumanpayExpectpay;
	}
	public Date geteHumanpayExpectday() {
		return eHumanpayExpectday;
	}
	public void seteHumanpayExpectday(Date eHumanpayExpectday) {
		this.eHumanpayExpectday = eHumanpayExpectday;
	}
	public String geteHumanpaySecret() {
		return eHumanpaySecret;
	}
	public void seteHumanpaySecret(String eHumanpaySecret) {
		this.eHumanpaySecret = eHumanpaySecret;
	}
	@Override
	public String toString() {
		return "WoHumanPayDb [eHumanpayNumber=" + eHumanpayNumber + ", themeNumber=" + themeNumber + ", ppWorkNumber="
				+ ppWorkNumber + ", eHumanpayName=" + eHumanpayName + ", eHumanpayResidentnumber="
				+ eHumanpayResidentnumber + ", eHumanpayExpectpay=" + eHumanpayExpectpay + ", eHumanpayExpectday="
				+ eHumanpayExpectday + ", eHumanpaySecret=" + eHumanpaySecret + "]";
	}
	
	
	
}
