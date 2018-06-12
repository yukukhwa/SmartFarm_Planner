// [유국화]
package com.spam.sfplanner.actresult;

import java.text.ParseException;
import java.util.Date;

/*
 * 작업단계 결과별 기타지출비용 결과 db
 */
public class WrEtcSpendPayDb {	
	private int wrEtcspendpayNumber; //기타지출비용 결과 넘버
	private int wrNumber; //작업단계결과 넘버
	private int eEtcspendpayNumber; //예상 기타지출비용 넘버
	private double wrEtcspendpayRealcost; //작업단계결과별 실제 기타지출비
	private String wrEtcspendpayDate; //작업단계별 기타지출비 등록일
	
	public int getWrEtcspendpayNumber() {
		return wrEtcspendpayNumber;
	}
	public void setWrEtcspendpayNumber(int wrEtcspendpayNumber) {
		this.wrEtcspendpayNumber = wrEtcspendpayNumber;
	}
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public int geteEtcspendpayNumber() {
		return eEtcspendpayNumber;
	}
	public void seteEtcspendpayNumber(int eEtcspendpayNumber) {
		this.eEtcspendpayNumber = eEtcspendpayNumber;
	}
	public double getWrEtcspendpayRealcost() {
		return wrEtcspendpayRealcost;
	}
	public void setWrEtcspendpayRealcost(double wrEtcspendpayRealcost) {
		this.wrEtcspendpayRealcost = wrEtcspendpayRealcost;
	}
	public String getWrEtcspendpayDate() {
		return wrEtcspendpayDate;
	}
	public void setWrEtcspendpayDate(String wrEtcspendpayDate) {
		java.util.Date date = new java.util.Date(); 
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 	
		
		this.wrEtcspendpayDate = sdf.format(date);
	}
	@Override
	public String toString() {
		return "WrEtcSpendPayDb [wrEtcspendpayNumber=" + wrEtcspendpayNumber + ", wrNumber=" + wrNumber
				+ ", eEtcspendpayNumber=" + eEtcspendpayNumber + ", wrEtcspendpayRealcost=" + wrEtcspendpayRealcost
				+ ", wrEtcspendpayDate=" + wrEtcspendpayDate + "]";
	}	
}