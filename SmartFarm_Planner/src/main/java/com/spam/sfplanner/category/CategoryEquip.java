/*배건혜*/
package com.spam.sfplanner.category;

import com.spam.sfplanner.corporation.Agency;

public class CategoryEquip {
	
	private int equipNumber;
	private Agency agency;
	private String equipName;
	public int getEquipNumber() {
		return equipNumber;
	}
	public void setEquipNumber(int equipNumber) {
		this.equipNumber = equipNumber;
	}
	public Agency getAgencyDb() {
		return agency;
	}
	public void setAgencyDb(Agency agency) {
		this.agency = agency;
	}
	public String getEquipName() {
		return equipName;
	}
	public void setEquipName(String equipName) {
		this.equipName = equipName;
	}
	@Override
	public String toString() {
		return "CategoryEquip [equipNumber=" + equipNumber + ", agency=" + agency + ", equipName=" + equipName
				+ "]";
	}
	
	
}
