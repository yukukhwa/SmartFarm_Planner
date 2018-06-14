// [유국화]
package com.spam.sfplanner.actresult;
import java.util.List;
/*
 * 작업단계 결과별 필요장비결과 db
 */
public class WrNeedEquip {
	private int wrNeedequipNumber; //필요장비 결과 넘버
	private int wrNumber; //작업단계결과 넘버
	private int eNeedequipNumber; //예상필요장비 넘버
	private String wrNeedequipState; //실행할때 보유상태
	private List<WrNeRentPay> wrNeRentPay; //필요장비결과별 대여비결과
	
	public int getWrNeedequipNumber() {
		return wrNeedequipNumber;
	}
	public void setWrNeedequipNumber(int wrNeedequipNumber) {
		this.wrNeedequipNumber = wrNeedequipNumber;
	}
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public int geteNeedequipNumber() {
		return eNeedequipNumber;
	}
	public void seteNeedequipNumber(int eNeedequipNumber) {
		this.eNeedequipNumber = eNeedequipNumber;
	}
	public String getWrNeedequipState() {
		return wrNeedequipState;
	}
	public void setWrNeedequipState(String wrNeedequipState) {
		this.wrNeedequipState = wrNeedequipState;
	}
	public List<WrNeRentPay> getWrNeRentPayDb() {
		return wrNeRentPay;
	}
	public void setWrNeRentPayDb(List<WrNeRentPay> wrNeRentPay) {
		this.wrNeRentPay = wrNeRentPay;
	}
	@Override
	public String toString() {
		return "WrNeedEquip [wrNeedequipNumber=" + wrNeedequipNumber + ", wrNumber=" + wrNumber
				+ ", eNeedequipNumber=" + eNeedequipNumber + ", wrNeedequipState=" + wrNeedequipState
				+ ", wrNeRentPay=" + wrNeRentPay + "]";
	}	
}