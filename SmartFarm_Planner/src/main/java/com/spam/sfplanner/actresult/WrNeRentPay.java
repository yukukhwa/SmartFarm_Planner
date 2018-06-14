// [유국화]
package com.spam.sfplanner.actresult;
import java.util.Date;

//필요장비 결과별 대여비 결과 db
public class WrNeRentPay {
	private int neRentpayNumber; //대여비 결과 넘버
	private WrNeedEquip wrNeedEquip; //필요장비 결과 넘버 외래키 기능 위한 객체
	private int neERentpayNumber; //예상 대여비 넘버 외래키 기능 위한 객체(클래스 없어서 수정전)
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
	public int getNeERentpayNumber() {
		return neERentpayNumber;
	}
	public void setNeERentpayNumber(int neERentpayNumber) {
		this.neERentpayNumber = neERentpayNumber;
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
		return "WrNeRentPay [neRentpayNumber=" + neRentpayNumber + ", wrNeedEquip=" + wrNeedEquip
				+ ", neERentpayNumber=" + neERentpayNumber + ", neRentpayCost=" + neRentpayCost + ", neRentpayDate="
				+ neRentpayDate + "]";
	}
	
}