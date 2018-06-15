//[유국화]
package com.spam.sfplanner.actresult;
import java.sql.Date;
import com.spam.sfplanner.plan.WoNeRentPay;

//필요장비 결과별 대여비 결과 db
public class WrNeRentPay {
	private int neRentpayNumber; //대여비 결과 넘버
	private WrNeedEquip wrNeedEquip; //필요장비 결과 넘버 외래키 기능 위한 객체
	private WoNeRentPay woNeRentPay; //예상 대여비 넘버 외래키 기능 위한 객체
	private double neRentpayCost; //대여비
	private Date neRentpayDate; //대여비지불일
	
	public int getNeRentpayNumber() {
		return neRentpayNumber;
	}
	public void setNeRentpayNumber(int neRentpayNumber) {
		this.neRentpayNumber = neRentpayNumber;
	}
	public WrNeedEquip getWrNeedEquip() {
		return wrNeedEquip;
	}
	public void setWrNeedEquip(WrNeedEquip wrNeedEquip) {
		this.wrNeedEquip = wrNeedEquip;
	}
	public WoNeRentPay getWoNeRentPay() {
		return woNeRentPay;
	}
	public void setWoNeRentPay(WoNeRentPay woNeRentPay) {
		this.woNeRentPay = woNeRentPay;
	}
	public double getNeRentpayCost() {
		return neRentpayCost;
	}
	public void setNeRentpayCost(double neRentpayCost) {
		this.neRentpayCost = neRentpayCost;
	}
	public Date getNeRentpayDate() {
		return neRentpayDate;
	}
	public void setNeRentpayDate(Date neRentpayDate) {
		this.neRentpayDate = neRentpayDate;
	}
	@Override
	public String toString() {
		return "WrNeRentPay [neRentpayNumber=" + neRentpayNumber + ", wrNeedEquip=" + wrNeedEquip + ", woNeRentPay="
				+ woNeRentPay + ", neRentpayCost=" + neRentpayCost + ", neRentpayDate=" + neRentpayDate + "]";
	}	
}