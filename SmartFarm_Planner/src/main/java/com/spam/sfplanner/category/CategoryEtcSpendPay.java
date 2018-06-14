/*배건혜*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.Farm;

public class CategoryEtcSpendPay {
	
	private int etcspendpayNumber;
	private  CategoryTheme categoryTheme;
	private String etcspendpayName;
	private Farm farm;
	public int getEtcspendpayNumber() {
		return etcspendpayNumber;
	}
	public void setEtcspendpayNumber(int etcspendpayNumber) {
		this.etcspendpayNumber = etcspendpayNumber;
	}
	public CategoryTheme getCategoryThemeDb() {
		return categoryTheme;
	}
	public void setCategoryThemeDb(CategoryTheme categoryTheme) {
		this.categoryTheme = categoryTheme;
	}
	public String getEtcspendpayName() {
		return etcspendpayName;
	}
	public void setEtcspendpayName(String etcspendpayName) {
		this.etcspendpayName = etcspendpayName;
	}
	public Farm getFarmDb() {
		return farm;
	}
	public void setFarmDb(Farm farm) {
		this.farm = farm;
	}
	@Override
	public String toString() {
		return "CategoryEtcSpendPay [etcspendpayNumber=" + etcspendpayNumber + ", categoryTheme=" + categoryTheme
				+ ", etcspendpayName=" + etcspendpayName + ", farm=" + farm + "]";
	}
	
}
