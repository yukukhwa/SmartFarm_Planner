/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.Date;

public class WrHumanPay {
	private int wrHumanpayNumber; // 인건비결과 기본키
	private int wrNumber; // 작업단계 외래키
	private int eHumanpayNumber; // 예상인건비 외래키
	private double wrHumanpayRealcost; // 실제인건비
	private Date wrHumanpayDate; // 실제작업일
	
	public int getWrHumanpayNumber() {
		return wrHumanpayNumber;
	}
	public void setWrHumanpayNumber(int wrHumanpayNumber) {
		this.wrHumanpayNumber = wrHumanpayNumber;
	}
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public int geteHumanpayNumber() {
		return eHumanpayNumber;
	}
	public void seteHumanpayNumber(int eHumanpayNumber) {
		this.eHumanpayNumber = eHumanpayNumber;
	}
	public double getWrHumanpayRealcost() {
		return wrHumanpayRealcost;
	}
	public void setWrHumanpayRealcost(double wrHumanpayRealcost) {
		this.wrHumanpayRealcost = wrHumanpayRealcost;
	}
	public Date getWrHumanpayDate() {
		return wrHumanpayDate;
	}
	public void setWrHumanpayDate(Date wrHumanpayDate) {
		this.wrHumanpayDate = wrHumanpayDate;
	}
	
	@Override
	public String toString() {
		return "WrHumanPay [wrHumanpayNumber=" + wrHumanpayNumber + ", wrNumber=" + wrNumber + ", eHumanpayNumber="
				+ eHumanpayNumber + ", wrHumanpayRealcost=" + wrHumanpayRealcost + ", wrHumanpayDate=" + wrHumanpayDate
				+ "]";
	}
}
