/*나성수*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.AgencyDb;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_industry_cate(산업분류 카테고리)
 */
public class CategoryIndustryDb {
	private int industryNumber; //산업분류넘버
	private AgencyDb agencyDb; //관리기관테이블
	private String industryName; //산업명
	public int getIndustryNumber() {
		return industryNumber;
	}
	public void setIndustryNumber(int industryNumber) {
		this.industryNumber = industryNumber;
	}
	public AgencyDb getAgencyDb() {
		return agencyDb;
	}
	public void setAgencyDb(AgencyDb agencyDb) {
		this.agencyDb = agencyDb;
	}
	public String getIndustryName() {
		return industryName;
	}
	public void setIndustryName(String industryName) {
		this.industryName = industryName;
	}
	@Override
	public String toString() {
		return "CategoryIndustryDb [industryNumber=" + industryNumber + ", agencyDb=" + agencyDb + ", industryName="
				+ industryName + "]";
	}
}
