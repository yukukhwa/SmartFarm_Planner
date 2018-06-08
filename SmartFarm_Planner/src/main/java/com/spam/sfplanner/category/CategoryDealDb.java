package com.spam.sfplanner.category;

public class CategoryDealDb {
	private int dealNumber;
	private int aNumber;
	private String dealClassification;
	public int getDealNumber() {
		return dealNumber;
	}
	public void setDealNumber(int dealNumber) {
		this.dealNumber = dealNumber;
	}
	public int getaNumber() {
		return aNumber;
	}
	public void setaNumber(int aNumber) {
		this.aNumber = aNumber;
	}
	public String getDealClassification() {
		return dealClassification;
	}
	public void setDealClassification(String dealClassification) {
		this.dealClassification = dealClassification;
	}
	@Override
	public String toString() {
		return "CategoryDealDb [dealNumber=" + dealNumber + ", aNumber=" + aNumber + ", dealClassification="
				+ dealClassification + "]";
	}
}
