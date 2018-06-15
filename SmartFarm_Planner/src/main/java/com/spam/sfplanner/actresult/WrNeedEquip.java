//[유국화]
package com.spam.sfplanner.actresult;
import com.spam.sfplanner.plan.WoNeedEquip;

//작업단계 결과별 필요장비결과 db
public class WrNeedEquip {
	private int wrNeedequipNumber; //필요장비 결과 넘버
	private PpWoResult ppWoResult; //작업단계결과 넘버 외래키 기능 위한 객체
	private WoNeedEquip woNeedEquip; //예상필요장비 넘버 외래키 기능 위한 객체
	private String wrNeedequipState; //실행할때 보유상태
	
	public int getWrNeedequipNumber() {
		return wrNeedequipNumber;
	}
	public void setWrNeedequipNumber(int wrNeedequipNumber) {
		this.wrNeedequipNumber = wrNeedequipNumber;
	}
	public PpWoResult getPpWoResult() {
		return ppWoResult;
	}
	public void setPpWoResult(PpWoResult ppWoResult) {
		this.ppWoResult = ppWoResult;
	}
	public WoNeedEquip getWoNeedEquip() {
		return woNeedEquip;
	}
	public void setWoNeedEquip(WoNeedEquip woNeedEquip) {
		this.woNeedEquip = woNeedEquip;
	}
	public String getWrNeedequipState() {
		return wrNeedequipState;
	}
	public void setWrNeedequipState(String wrNeedequipState) {
		this.wrNeedequipState = wrNeedequipState;
	}
	@Override
	public String toString() {
		return "WrNeedEquip [wrNeedequipNumber=" + wrNeedequipNumber + ", ppWoResult=" + ppWoResult + ", woNeedEquip="
				+ woNeedEquip + ", wrNeedequipState=" + wrNeedequipState + "]";
	}	
}