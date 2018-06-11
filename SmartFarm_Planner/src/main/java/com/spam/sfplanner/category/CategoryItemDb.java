/*나성수*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.AgencyDb;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_industry_item_cate(품목분류 카테고리)
 */
public class CategoryItemDb {
	private int iItemNumber; //품목분류넘버
	private CategoryIndustryDb categoryIndustryDb; //산업분류 카테고리 테이블
	private AgencyDb agencyDb; //관리기관테이블	
	private String iItemName; //품목명
	public int getiItemNumber() {
		return iItemNumber;
	}
	public void setiItemNumber(int iItemNumber) {
		this.iItemNumber = iItemNumber;
	}
	public CategoryIndustryDb getCategoryIndustryDb() {
		return categoryIndustryDb;
	}
	public void setCategoryIndustryDb(CategoryIndustryDb categoryIndustryDb) {
		this.categoryIndustryDb = categoryIndustryDb;
	}
	public AgencyDb getAgencyDb() {
		return agencyDb;
	}
	public void setAgencyDb(AgencyDb agencyDb) {
		this.agencyDb = agencyDb;
	}
	public String getiItemName() {
		return iItemName;
	}
	public void setiItemName(String iItemName) {
		this.iItemName = iItemName;
	}
	@Override
	public String toString() {
		return "CategoryItemDb [iItemNumber=" + iItemNumber + ", categoryIndustryDb=" + categoryIndustryDb
				+ ", agencyDb=" + agencyDb + ", iItemName=" + iItemName + "]";
	}
}
