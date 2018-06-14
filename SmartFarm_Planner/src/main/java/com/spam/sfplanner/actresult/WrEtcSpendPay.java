//[유국화]
package com.spam.sfplanner.actresult;

//작업단계 결과별 기타지출비용 결과 db
public class WrEtcSpendPay {	
	private int wrEtcspendpayNumber; //기타지출비용 결과 넘버
	private PpWoResult ppWoResult; //작업단계결과 넘버 외래키 기능 위한 객체
	private int eEtcspendpayNumber; //예상 기타지출비용 넘버 외래키 기능 위한 객체(클래스없어서 수정전)
	private double wrEtcspendpayRealcost; //작업단계결과별 실제 기타지출비
	private String wrEtcspendpayDate; //작업단계별 기타지출비 등록일
	public int getWrEtcspendpayNumber() {
		return wrEtcspendpayNumber;
	}
	public void setWrEtcspendpayNumber(int wrEtcspendpayNumber) {
		this.wrEtcspendpayNumber = wrEtcspendpayNumber;
	}
	public PpWoResult getPpWoResult() {
		return ppWoResult;
	}
	public void setPpWoResult(PpWoResult ppWoResult) {
		this.ppWoResult = ppWoResult;
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
		this.wrEtcspendpayDate = wrEtcspendpayDate;
	}
	@Override
	public String toString() {
		return "WrEtcSpendPay [wrEtcspendpayNumber=" + wrEtcspendpayNumber + ", ppWoResult=" + ppWoResult
				+ ", eEtcspendpayNumber=" + eEtcspendpayNumber + ", wrEtcspendpayRealcost=" + wrEtcspendpayRealcost
				+ ", wrEtcspendpayDate=" + wrEtcspendpayDate + "]";
	}
	
}