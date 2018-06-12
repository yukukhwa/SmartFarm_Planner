/*배건혜*/
package com.spam.sfplanner.category;

public class CategoryEquipDb {
	
	private int equipNumber;
	private int aNumber;
	private String equipName;
	public int getEquipNumber() {
		return equipNumber;
	}
	public void setEquipNumber(int equipNumber) {
		this.equipNumber = equipNumber;
	}
	public int getaNumber() {
		return aNumber;
	}
	public void setaNumber(int aNumber) {
		this.aNumber = aNumber;
	}
	public String getEquipName() {
		return equipName;
	}
	public void setEquipName(String equipName) {
		this.equipName = equipName;
	}
	@Override
	public String toString() {
		return "CategoryEquipDb [equipNumber=" + equipNumber + ", aNumber=" + aNumber + ", equipName=" + equipName
				+ "]";
	}
	
	

}
