package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.Agency;

public class CategoryTheme {
	private int themeNumber; // 테마 넘버
	private int aNumber; // 테마를 등록하는 관리기관넘버
	private String themeName; // 테마이름
	private Agency agency;
	private CategoryMaterials categoryMaterials;
	
	public CategoryTheme() {
		this.agency = new Agency();
		this.categoryMaterials = new CategoryMaterials();
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
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public Agency getAgency() {
		return agency;
	}
	public void setAgency(Agency agency) {
		this.agency = agency;
	}
	public CategoryMaterials getCategoryMaterials() {
		return categoryMaterials;
	}
	public void setCategoryMaterials(CategoryMaterials categoryMaterials) {
		this.categoryMaterials = categoryMaterials;
	}
	
	@Override
	public String toString() {
		return "CategoryTheme [themeNumber=" + themeNumber + ", aNumber=" + aNumber + ", themeName=" + themeName
				+ ", agency=" + agency + ", categoryMaterials=" + categoryMaterials + "]";
	}
	
}
