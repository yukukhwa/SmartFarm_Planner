/*나성수*/
package com.spam.sfplanner.plan;

import com.spam.sfplanner.category.CategoryItem;
import com.spam.sfplanner.corporation.Farm;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_pp_name_cate(계획명 카테고리)
 */
public class TitlePlan {
	private int ppNameNumber; //계획명넘버
	private String ppNamePlanname; //계획명
	private Farm farm; //농가 테이블
	private CategoryItem categoryItem; //품목카테고리 테이블
	public TitlePlan() {
		this.farm = new Farm();
		this.categoryItem = new CategoryItem();
	}
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
	public Farm getFarmDb() {
		return farm;
	}
	public void setFarmDb(Farm farm) {
		this.farm = farm;
	}
	public CategoryItem getCategoryItemDb() {
		return categoryItem;
	}
	public void setCategoryItemDb(CategoryItem categoryItem) {
		this.categoryItem = categoryItem;
	}
	@Override
	public String toString() {
		return "TitlePlan [ppNameNumber=" + ppNameNumber + ", ppNamePlanname=" + ppNamePlanname + ", farm=" + farm
				+ ", categoryItem=" + categoryItem + "]";
	}
}
