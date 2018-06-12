/*[김기성]*/
package com.spam.sfplanner.actresult;

public class WrMaterialsPayDb {
	private int wrMaterialspayNumber; // 원자재비 결과 기본기
	private int wrNumber; // 작업단계결과 외래키
	private int eMaterialspayNumber; // 예상원자재비 외래키
	private double wrMaterialspayQuantity; // 실제 사용량
	private String wrMaterialspayUnitcost; // 현재 원자재 단가
	
	public int getWrMaterialspayNumber() {
		return wrMaterialspayNumber;
	}
	public void setWrMaterialspayNumber(int wrMaterialspayNumber) {
		this.wrMaterialspayNumber = wrMaterialspayNumber;
	}
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public int geteMaterialspayNumber() {
		return eMaterialspayNumber;
	}
	public void seteMaterialspayNumber(int eMaterialspayNumber) {
		this.eMaterialspayNumber = eMaterialspayNumber;
	}
	public double getWrMaterialspayQuantity() {
		return wrMaterialspayQuantity;
	}
	public void setWrMaterialspayQuantity(double wrMaterialspayQuantity) {
		this.wrMaterialspayQuantity = wrMaterialspayQuantity;
	}
	public String getWrMaterialspayUnitcost() {
		return wrMaterialspayUnitcost;
	}
	public void setWrMaterialspayUnitcost(String wrMaterialspayUnitcost) {
		this.wrMaterialspayUnitcost = wrMaterialspayUnitcost;
	}
	
	@Override
	public String toString() {
		return "WrMaterialsPayDb [wrMaterialspayNumber=" + wrMaterialspayNumber + ", wrNumber=" + wrNumber
				+ ", eMaterialspayNumber=" + eMaterialspayNumber + ", wrMaterialspayQuantity=" + wrMaterialspayQuantity
				+ ", wrMaterialspayUnitcost=" + wrMaterialspayUnitcost + "]";
	}
}
