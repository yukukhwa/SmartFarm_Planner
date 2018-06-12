package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.AgencyDb;

public class CategoryDealDb {
	private int dealNumber;
	private AgencyDb agencyDb;
	private String dealClassification;
	public int getDealNumber() {
		return dealNumber;
	}
	public void setDealNumber(int dealNumber) {
		this.dealNumber = dealNumber;
	}
	public AgencyDb getAgencyDb() {
		return agencyDb;
	}
	public void setAgencyDb(AgencyDb agencyDb) {
		this.agencyDb = agencyDb;
	}
	public String getDealClassification() {
		return dealClassification;
	}
	public void setDealClassification(String dealClassification) {
		this.dealClassification = dealClassification;
	}
	@Override
	public String toString() {
		return "CategoryDealDb [dealNumber=" + dealNumber + ", agencyDb=" + agencyDb + ", dealClassification="
				+ dealClassification + "]";
	}
	
}
