/*나성수*/
package com.spam.sfplanner.plan;

import com.spam.sfplanner.category.CategoryItemDb;
import com.spam.sfplanner.corporation.FarmDb;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_pp_name_cate(계획명 카테고리)
 */
public class TitlePlanDb {
	private int ppNameNumber; //계획명넘버
	private String ppNamePlanname; //계획명
	private FarmDb farmDb; //농가 테이블
	private CategoryItemDb categoryItemDb; //품목카테고리 테이블
	public int getPpNameNumber() {
		return ppNameNumber;
	}
	public void setPpNameNumber(int ppNameNumber) {
		this.ppNameNumber = ppNameNumber;
	}
	public String getPpNamePlanname() {
		return ppNamePlanname;
	}
	public void setPpNamePlanname(String ppNamePlanname) {
		this.ppNamePlanname = ppNamePlanname;
	}
	public FarmDb getFarmDb() {
		return farmDb;
	}
	public void setFarmDb(FarmDb farmDb) {
		this.farmDb = farmDb;
	}
	public CategoryItemDb getCategoryItemDb() {
		return categoryItemDb;
	}
	public void setCategoryItemDb(CategoryItemDb categoryItemDb) {
		this.categoryItemDb = categoryItemDb;
	}
	@Override
	public String toString() {
		return "TitlePlanDb [ppNameNumber=" + ppNameNumber + ", ppNamePlanname=" + ppNamePlanname + ", farmDb=" + farmDb
				+ ", categoryItemDb=" + categoryItemDb + "]";
	}
}
