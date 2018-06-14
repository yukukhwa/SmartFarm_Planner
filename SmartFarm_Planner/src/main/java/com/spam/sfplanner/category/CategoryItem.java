/*나성수*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.Agency;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_industry_item_cate(품목분류 카테고리)
 */
public class CategoryItem {
	private int iItemNumber; //품목분류넘버
	private CategoryIndustry categoryIndustry; //산업분류 카테고리 테이블
	private Agency agency; //관리기관테이블	
	private String iItemName; //품목명
	public int getiItemNumber() {
		return iItemNumber;
	}
	public void setiItemNumber(int iItemNumber) {
		this.iItemNumber = iItemNumber;
	}
	public CategoryIndustry getCategoryIndustryDb() {
		return categoryIndustry;
	}
	public void setCategoryIndustryDb(CategoryIndustry categoryIndustry) {
		this.categoryIndustry = categoryIndustry;
	}
	public Agency getAgencyDb() {
		return agency;
	}
	public void setAgencyDb(Agency agency) {
		this.agency = agency;
	}
	public String getiItemName() {
		return iItemName;
	}
	public void setiItemName(String iItemName) {
		this.iItemName = iItemName;
	}
	@Override
	public String toString() {
		return "CategoryItem [iItemNumber=" + iItemNumber + ", categoryIndustry=" + categoryIndustry
				+ ", agency=" + agency + ", iItemName=" + iItemName + "]";
	}
}
