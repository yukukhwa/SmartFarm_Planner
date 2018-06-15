/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.sql.Date;

import com.spam.sfplanner.plan.WoHumanPay;

public class WrHumanPay {
	private int wrHumanpayNumber; // 인건비결과 기본키
	private PpWoResult ppWoResult; // 작업단계 외래키를 가지고 있는 작업단계결과 객체
	private WoHumanPay woHumanPay; // 예상인건비 외래키를 가지고 있는 예상인건비 객체
	private double wrHumanpayRealcost; // 실제인건비
	private Date wrHumanpayDate; // 실제작업일
	
	public int getWrHumanpayNumber() {
		return wrHumanpayNumber;
	}
	public void setWrHumanpayNumber(int wrHumanpayNumber) {
		this.wrHumanpayNumber = wrHumanpayNumber;
	}
	public PpWoResult getPpWoResult() {
		return ppWoResult;
	}
	public void setPpWoResult(PpWoResult ppWoResult) {
		this.ppWoResult = ppWoResult;
	}
	public WoHumanPay getWoHumanPay() {
		return woHumanPay;
	}
	public void setWoHumanPay(WoHumanPay woHumanPay) {
		this.woHumanPay = woHumanPay;
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
		return "WrHumanPay [wrHumanpayNumber=" + wrHumanpayNumber + ", ppWoResult=" + ppWoResult + ", woHumanPay="
				+ woHumanPay + ", wrHumanpayRealcost=" + wrHumanpayRealcost + ", wrHumanpayDate=" + wrHumanpayDate
				+ "]";
	}
}
