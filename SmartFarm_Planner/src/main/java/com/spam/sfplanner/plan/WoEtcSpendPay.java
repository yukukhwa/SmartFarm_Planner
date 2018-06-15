/*배건혜*/
package com.spam.sfplanner.plan;

public class WoEtcSpendPay {
	private int eEtcspendpayNumber; //예상기타지출비넘버
	private int etcspendpayNumber; //기타지출비용카테넘버
	private int ppWorkNumber; //작업단계넘버
	private String eEtcspendpayContent; //지출상세내용
	private String eEtcspendpayDay; //예상기타지출일
	private double eEtcspendpayCost; //예상기타지출비
	private String eEtcspendpaySecret; //공개/비공개 
	public int geteEtcspendpayNumber() {
		return eEtcspendpayNumber;
	}
	public void seteEtcspendpayNumber(int eEtcspendpayNumber) {
		this.eEtcspendpayNumber = eEtcspendpayNumber;
	}
	public int getEtcspendpayNumber() {
		return etcspendpayNumber;
	}
	public void setEtcspendpayNumber(int etcspendpayNumber) {
		this.etcspendpayNumber = etcspendpayNumber;
	}
	public int getPpWorkNumber() {
		return ppWorkNumber;
	}
	public void setPpWorkNumber(int ppWorkNumber) {
		this.ppWorkNumber = ppWorkNumber;
	}
	public String geteEtcspendpayContent() {
		return eEtcspendpayContent;
	}
	public void seteEtcspendpayContent(String eEtcspendpayContent) {
		this.eEtcspendpayContent = eEtcspendpayContent;
	}
	public String geteEtcspendpayDay() {
		return eEtcspendpayDay;
	}
	public void seteEtcspendpayDay(String eEtcspendpayDay) {
		this.eEtcspendpayDay = eEtcspendpayDay;
	}
	public double geteEtcspendpayCost() {
		return eEtcspendpayCost;
	}
	public void seteEtcspendpayCost(double eEtcspendpayCost) {
		this.eEtcspendpayCost = eEtcspendpayCost;
	}
	public String geteEtcspendpaySecret() {
		return eEtcspendpaySecret;
	}
	public void seteEtcspendpaySecret(String eEtcspendpaySecret) {
		this.eEtcspendpaySecret = eEtcspendpaySecret;
	}
	@Override
	public String toString() {
		return "WoEtcSpendPay [eEtcspendpayNumber=" + eEtcspendpayNumber + ", etcspendpayNumber=" + etcspendpayNumber
				+ ", ppWorkNumber=" + ppWorkNumber + ", eEtcspendpayContent=" + eEtcspendpayContent
				+ ", eEtcspendpayDay=" + eEtcspendpayDay + ", eEtcspendpayCost=" + eEtcspendpayCost
				+ ", eEtcspendpaySecret=" + eEtcspendpaySecret + "]";
	}
	

}
