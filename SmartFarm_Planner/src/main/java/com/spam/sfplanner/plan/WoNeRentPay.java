/*배건혜*/
package com.spam.sfplanner.plan;

import com.spam.sfplanner.category.CategoryTheme;

public class WoNeRentPay {
	private int neERentpayNumber; //예상대여비넘버
	private CategoryTheme categoryTheme; //테마카테고리 테이블
	private WoNeedEquip woNeedEquip; //에상필요장비테이블
	private CompanyRentEquip companyRentEquip; //대여가능장비테이블
	private String neERentpaySecret; //공개/비공개여부
	public int getNeERentpayNumber() {
		return neERentpayNumber;
	}
	public void setNeERentpayNumber(int neERentpayNumber) {
		this.neERentpayNumber = neERentpayNumber;
	}
	public CategoryTheme getCategoryTheme() {
		return categoryTheme;
	}
	public void setCategoryTheme(CategoryTheme categoryTheme) {
		this.categoryTheme = categoryTheme;
	}
	public WoNeedEquip getWoNeedEquip() {
		return woNeedEquip;
	}
	public void setWoNeedEquip(WoNeedEquip woNeedEquip) {
		this.woNeedEquip = woNeedEquip;
	}
	public CompanyRentEquip getCompanyRentEquip() {
		return companyRentEquip;
	}
	public void setCompanyRentEquip(CompanyRentEquip companyRentEquip) {
		this.companyRentEquip = companyRentEquip;
	}
	public String getNeERentpaySecret() {
		return neERentpaySecret;
	}
	public void setNeERentpaySecret(String neERentpaySecret) {
		this.neERentpaySecret = neERentpaySecret;
	}
	@Override
	public String toString() {
		return "WoNeRentPay [neERentpayNumber=" + neERentpayNumber + ", categoryTheme=" + categoryTheme
				+ ", woNeedEquip=" + woNeedEquip + ", companyRentEquip=" + companyRentEquip + ", neERentpaySecret="
				+ neERentpaySecret + "]";
	}
	
	
	
}
