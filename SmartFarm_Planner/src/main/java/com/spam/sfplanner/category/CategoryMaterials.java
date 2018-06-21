/*[김재희]*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.Agency;

public class CategoryMaterials {
	private int materialsNumber; // 원자재카테고리 넘버
	private String materialsName; // 원자재이름
	private String materialsUnit; // 원자재의 단위
	private CategoryTheme categoryTheme; // 테마 카테고리
	private Agency agency; // 관리기관
	
	public int getMaterialsNumber() {
		return materialsNumber;
	}
	public void setMaterialsNumber(int materialsNumber) {
		this.materialsNumber = materialsNumber;
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
	public CategoryTheme getCategoryTheme() {
		return categoryTheme;
	}
	public void setCategoryTheme(CategoryTheme categoryTheme) {
		this.categoryTheme = categoryTheme;
	}
	public Agency getAgency() {
		return agency;
	}
	public void setAgency(Agency agency) {
		this.agency = agency;
	}
	
	@Override
	public String toString() {
		return "CategoryMaterials [materialsNumber=" + materialsNumber + ", materialsName=" + materialsName
				+ ", materialsUnit=" + materialsUnit + ", categoryTheme=" + categoryTheme + ", agency=" + agency + "]";
	}
	
	
}
