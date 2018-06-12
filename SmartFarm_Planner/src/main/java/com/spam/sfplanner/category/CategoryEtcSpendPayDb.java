/*배건혜*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.FarmDb;

public class CategoryEtcSpendPayDb {
	
	private int etcspendpayNumber;
	private  CategoryThemeDb categoryThemeDb;
	private String etcspendpayName;
	private FarmDb farmDb;
	public int getEtcspendpayNumber() {
		return etcspendpayNumber;
	}
	public void setEtcspendpayNumber(int etcspendpayNumber) {
		this.etcspendpayNumber = etcspendpayNumber;
	}
	public CategoryThemeDb getCategoryThemeDb() {
		return categoryThemeDb;
	}
	public void setCategoryThemeDb(CategoryThemeDb categoryThemeDb) {
		this.categoryThemeDb = categoryThemeDb;
	}
	public String getEtcspendpayName() {
		return etcspendpayName;
	}
	public void setEtcspendpayName(String etcspendpayName) {
		this.etcspendpayName = etcspendpayName;
	}
	public FarmDb getFarmDb() {
		return farmDb;
	}
	public void setFarmDb(FarmDb farmDb) {
		this.farmDb = farmDb;
	}
	@Override
	public String toString() {
		return "CategoryEtcSpendPayDb [etcspendpayNumber=" + etcspendpayNumber + ", categoryThemeDb=" + categoryThemeDb
				+ ", etcspendpayName=" + etcspendpayName + ", farmDb=" + farmDb + "]";
	}
	
}
