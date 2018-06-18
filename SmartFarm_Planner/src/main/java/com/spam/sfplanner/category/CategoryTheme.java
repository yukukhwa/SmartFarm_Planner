package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.Agency;

public class CategoryTheme {
	private int themeNumber; // 테마 넘버
	private String themeName; // 테마이름
	private Agency agency; // 관리기관
	private CategoryMaterials categoryMaterials; // 원자재 카테고리

	public int getThemeNumber() {
		return themeNumber;
	}

	public void setThemeNumber(int themeNumber) {
		this.themeNumber = themeNumber;
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
		return "CategoryTheme [themeNumber=" + themeNumber + ", themeName=" + themeName + ", agency=" + agency
				+ ", categoryMaterials=" + categoryMaterials + "]";
	}
	
	
}
