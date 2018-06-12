// [유국화]
package com.spam.sfplanner.actresult;
import java.util.Date;

/*
 * 필요장비 결과별 대여비 결과 db
 */
public class WrNeRentPayDb {
	private int neRentpayNumber; //대여비 결과 넘버
	private int wrNeedequipNumber; //필요장비 결과 넘버
	private double neRentpayCost; //대여비
	private Date neRentpayDate; //대여비지불일
	private int neERentpayNumber; //예상 대여비 넘버
	
	public int getNeRentpayNumber() {
		return neRentpayNumber;
	}
	public void setNeRentpayNumber(int neRentpayNumber) {
		this.neRentpayNumber = neRentpayNumber;
	}
	public int getWrNeedequipNumber() {
		return wrNeedequipNumber;
	}
	public void setWrNeedequipNumber(int wrNeedequipNumber) {
		this.wrNeedequipNumber = wrNeedequipNumber;
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
	public int getNeERentpayNumber() {
		return neERentpayNumber;
	}
	public void setNeERentpayNumber(int neERentpayNumber) {
		this.neERentpayNumber = neERentpayNumber;
	}
	@Override
	public String toString() {
		return "WrNeRentPayDb [neRentpayNumber=" + neRentpayNumber + ", wrNeedequipNumber=" + wrNeedequipNumber
				+ ", neRentpayCost=" + neRentpayCost + ", neRentpayDate=" + neRentpayDate + ", neERentpayNumber="
				+ neERentpayNumber + "]";
	}	
}