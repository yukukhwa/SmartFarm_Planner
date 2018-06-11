package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.AgencyDb;

public class CategoryThemeDb {
	private int themeNumber; // 테마 넘버
	private int aNumber; // 테마를 등록하는 관리기관넘버
	private String themeName; // 테마이름
	private AgencyDb agencyDb;
	
	public int getThemeNumber() {
		return themeNumber;
	}
	public void setThemeNumber(int themeNumber) {
		this.themeNumber = themeNumber;
	}
	public int getaNumber() {
		return aNumber;
	}
	public void setaNumber(int aNumber) {
		this.aNumber = aNumber;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public AgencyDb getAgencyDb() {
		return agencyDb;
	}
	public void setAgencyDb(AgencyDb agencyDb) {
		this.agencyDb = agencyDb;
	}
	
	@Override
	public String toString() {
		return "CategoryThemeDb [themeNumber=" + themeNumber + ", aNumber=" + aNumber + ", themeName=" + themeName
				+ ", agencyDb=" + agencyDb + "]";
	}
	
}
