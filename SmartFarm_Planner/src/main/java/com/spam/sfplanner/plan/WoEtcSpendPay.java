/*배건혜*/
package com.spam.sfplanner.plan;

import java.sql.Date;

import com.spam.sfplanner.category.CategoryEtcSpendPay;

public class WoEtcSpendPay {
	private int eEtcspendpayNumber; //예상기타지출비넘버
	private CategoryEtcSpendPay categoryEtcSpendPay; //기타지출비용카테고리 테이블
	private PpWork ppWork; //작업단계테이블
	private String eEtcspendpayContent; //지출상세내용
	private Date eEtcspendpayDay; //예상기타지출일
	private double eEtcspendpayCost; //예상기타지출비
	private String eEtcspendpaySecret; //공개/비공개 
	public int geteEtcspendpayNumber() {
		return eEtcspendpayNumber;
	}
	public void seteEtcspendpayNumber(int eEtcspendpayNumber) {
		this.eEtcspendpayNumber = eEtcspendpayNumber;
	}
	public CategoryEtcSpendPay getCategoryEtcSpendPay() {
		return categoryEtcSpendPay;
	}
	public void setCategoryEtcSpendPay(CategoryEtcSpendPay categoryEtcSpendPay) {
		this.categoryEtcSpendPay = categoryEtcSpendPay;
	}
	public PpWork getPpWork() {
		return ppWork;
	}
	public void setPpWork(PpWork ppWork) {
		this.ppWork = ppWork;
	}
	public String geteEtcspendpayContent() {
		return eEtcspendpayContent;
	}
	public void seteEtcspendpayContent(String eEtcspendpayContent) {
		this.eEtcspendpayContent = eEtcspendpayContent;
	}
	public Date geteEtcspendpayDay() {
		return eEtcspendpayDay;
	}
	public void seteEtcspendpayDay(Date eEtcspendpayDay) {
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
		return "WoEtcSpendPay [eEtcspendpayNumber=" + eEtcspendpayNumber + ", categoryEtcSpendPay="
				+ categoryEtcSpendPay + ", ppWork=" + ppWork + ", eEtcspendpayContent=" + eEtcspendpayContent
				+ ", eEtcspendpayDay=" + eEtcspendpayDay + ", eEtcspendpayCost=" + eEtcspendpayCost
				+ ", eEtcspendpaySecret=" + eEtcspendpaySecret + "]";
	}
	
	
}
