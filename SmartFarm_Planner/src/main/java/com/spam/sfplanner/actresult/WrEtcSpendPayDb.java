// [유국화]
package com.spam.sfplanner.actresult;

import java.util.Date;

public class WrEtcSpendPayDb {
	/*
	 * 작업단계 결과별 기타지출비용 결과 db
	 */
	private int WrEtcspendpayNumber; // 기타지출비용 결과 넘버
	private int WrNumber; // 작업단계결과 넘버
	private int EEtcspendpayNumber; // 예상 기타지출비용 넘버
	private double WrEtcspendpayRealcost; // 작업단계결과별 실제 기타지출비
	private Date WrEtcspendpayDate; // 작업단계별 기타지출비 등록일
	public int getWrEtcspendpayNumber() {
		return WrEtcspendpayNumber;
	}
	public void setWrEtcspendpayNumber(int wrEtcspendpayNumber) {
		WrEtcspendpayNumber = wrEtcspendpayNumber;
	}
	public int getWrNumber() {
		return WrNumber;
	}
	public void setWrNumber(int wrNumber) {
		WrNumber = wrNumber;
	}
	public int getEEtcspendpayNumber() {
		return EEtcspendpayNumber;
	}
	public void setEEtcspendpayNumber(int eEtcspendpayNumber) {
		EEtcspendpayNumber = eEtcspendpayNumber;
	}	
	public double getWrEtcspendpayRealcost() {
		return WrEtcspendpayRealcost;
	}
	public void setWrEtcspendpayRealcost(double wrEtcspendpayRealcost) {
		WrEtcspendpayRealcost = wrEtcspendpayRealcost;
	}
	public Date getWrEtcspendpayDate() {
		return WrEtcspendpayDate;
	}
	public void setWrEtcspendpayDate(Date wrEtcspendpayDate) {
		WrEtcspendpayDate = wrEtcspendpayDate;
	}
	@Override
	public String toString() {
		return "WrEtcSpendPayDb [WrEtcspendpayNumber=" + WrEtcspendpayNumber + ", WrNumber=" + WrNumber
				+ ", EEtcspendpayNumber=" + EEtcspendpayNumber + ", WrEtcspendpayRealcost=" + WrEtcspendpayRealcost
				+ ", WrEtcspendpayDate=" + WrEtcspendpayDate + "]";
	}	
}