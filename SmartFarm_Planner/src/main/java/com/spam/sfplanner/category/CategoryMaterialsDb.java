package com.spam.sfplanner.category;

public class CategoryMaterialsDb {
	private int materialsNumber; // 원자재카테고리 넘버
	private int themeNumber; // 테마카테고리 넘버
	private int aNumber; // 관리기관 넘버
	private String materialsName; // 원자재이름
	private String materialsUnit; // 원자재의 단위
	
	public int getMaterialsNumber() {
		return materialsNumber;
	}
	public void setMaterialsNumber(int materialsNumber) {
		this.materialsNumber = materialsNumber;
	}
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
	public String getMaterialsName() {
		return materialsName;
	}
	public void setMaterialsName(String materialsName) {
		this.materialsName = materialsName;
	}
	public String getMaterialsUnit() {
		return materialsUnit;
	}
	public void setMaterialsUnit(String materialsUnit) {
		this.materialsUnit = materialsUnit;
	}
	
	@Override
	public String toString() {
		return "CategoryMaterialsDb [materialsNumber=" + materialsNumber + ", themeNumber=" + themeNumber + ", aNumber="
				+ aNumber + ", materialsName=" + materialsName + ", materialsUnit=" + materialsUnit + "]";
	}
}
