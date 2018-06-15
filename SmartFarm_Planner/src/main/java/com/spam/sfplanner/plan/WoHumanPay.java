package com.spam.sfplanner.plan;

import java.sql.Date;

import com.spam.sfplanner.category.CategoryTheme;

public class WoHumanPay {
	private int eHumanpayNumber; // 예상인건비넘버
	private int themeNumber; // 테마 카테고리 넘버
	private int ppWorkNumber; // 작업단계넘버
	private String eHumanpayName; // 인부이름
	private String eHumanpayResidentnumber; // 주민번호
	private double eHumanpayExpectpay; // 예상인건비(일)
	private Date eHumanpayExpectday; // 예상작업일
	private String eHumanpaySecret; // 공개/비공개 여부
	private CategoryTheme categoryTheme;
	private PpWork ppWork;
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
	public CategoryTheme getCategoryTheme() {
		return categoryTheme;
	}
	public void setCategoryTheme(CategoryTheme categoryTheme) {
		this.categoryTheme = categoryTheme;
	}
	public PpWork getPpWork() {
		return ppWork;
	}
	public void setPpWork(PpWork ppWork) {
		this.ppWork = ppWork;
	}
	@Override
	public String toString() {
		return "WoHumanPay [eHumanpayNumber=" + eHumanpayNumber + ", themeNumber=" + themeNumber + ", ppWorkNumber="
				+ ppWorkNumber + ", eHumanpayName=" + eHumanpayName + ", eHumanpayResidentnumber="
				+ eHumanpayResidentnumber + ", eHumanpayExpectpay=" + eHumanpayExpectpay + ", eHumanpayExpectday="
				+ eHumanpayExpectday + ", eHumanpaySecret=" + eHumanpaySecret + ", categoryTheme=" + categoryTheme
				+ ", ppWork=" + ppWork + "]";
	}
	
	
}
