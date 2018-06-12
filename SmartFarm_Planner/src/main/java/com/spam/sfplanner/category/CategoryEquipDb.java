/*배건혜*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.AgencyDb;

public class CategoryEquipDb {
	
	private int equipNumber;
	private AgencyDb agencyDb;
	private String equipName;
	public int getEquipNumber() {
		return equipNumber;
	}
	public void setEquipNumber(int equipNumber) {
		this.equipNumber = equipNumber;
	}
	public AgencyDb getAgencyDb() {
		return agencyDb;
	}
	public void setAgencyDb(AgencyDb agencyDb) {
		this.agencyDb = agencyDb;
	}
	public String getEquipName() {
		return equipName;
	}
	public void setEquipName(String equipName) {
		this.equipName = equipName;
	}
	@Override
	public String toString() {
		return "CategoryEquipDb [equipNumber=" + equipNumber + ", agencyDb=" + agencyDb + ", equipName=" + equipName
				+ "]";
	}
	
	
}
