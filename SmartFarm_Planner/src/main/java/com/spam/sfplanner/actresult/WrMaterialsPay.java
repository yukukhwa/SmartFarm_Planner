/*[김기성]*/
package com.spam.sfplanner.actresult;

import com.spam.sfplanner.plan.WoMaterialsPay;

public class WrMaterialsPay {
	private int wrMaterialspayNumber; // 원자재비 결과 기본기
	private PpWoResult ppWoResult; // 작업단계결과 외래키를 가지고 있는 작업단계결과 객체
	private WoMaterialsPay woMaterialsPay; // 예상원자재비 외래키를 가지고 있는 예상원자재비 객체
	private double wrMaterialspayQuantity; // 실제 사용량
	private String wrMaterialspayUnitcost; // 현재 원자재 단가
	
	public WrMaterialsPay() {
		this.ppWoResult = new PpWoResult();
	}
	public int getWrMaterialspayNumber() {
		return wrMaterialspayNumber;
	}
	public void setWrMaterialspayNumber(int wrMaterialspayNumber) {
		this.wrMaterialspayNumber = wrMaterialspayNumber;
	}
	public PpWoResult getPpWoResult() {
		return ppWoResult;
	}
	public void setPpWoResult(PpWoResult ppWoResult) {
		this.ppWoResult = ppWoResult;
	}
	public WoMaterialsPay getWoMaterialsPay() {
		return woMaterialsPay;
	}
	public void setWoMaterialsPay(WoMaterialsPay woMaterialsPay) {
		this.woMaterialsPay = woMaterialsPay;
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
		return "WrMaterialsPay [wrMaterialspayNumber=" + wrMaterialspayNumber + ", ppWoResult=" + ppWoResult
				+ ", woMaterialsPay=" + woMaterialsPay + ", wrMaterialspayQuantity=" + wrMaterialspayQuantity
				+ ", wrMaterialspayUnitcost=" + wrMaterialspayUnitcost + "]";
	}
}
