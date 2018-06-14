package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.Agency;

public class CategoryDeal {
	private int dealNumber;
	private Agency agency;
	private String dealClassification;
	public int getDealNumber() {
		return dealNumber;
	}
	public void setDealNumber(int dealNumber) {
		this.dealNumber = dealNumber;
	}
	public Agency getAgencyDb() {
		return agency;
	}
	public void setAgencyDb(Agency agency) {
		this.agency = agency;
	}
	public String getDealClassification() {
		return dealClassification;
	}
	public void setDealClassification(String dealClassification) {
		this.dealClassification = dealClassification;
	}
	@Override
	public String toString() {
		return "CategoryDeal [dealNumber=" + dealNumber + ", agency=" + agency + ", dealClassification="
				+ dealClassification + "]";
	}
	
}
