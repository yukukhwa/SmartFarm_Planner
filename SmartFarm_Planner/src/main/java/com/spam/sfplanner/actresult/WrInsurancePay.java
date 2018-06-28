//[유국화]
package com.spam.sfplanner.actresult;
import java.sql.Date;
import com.spam.sfplanner.plan.WoInsurancePay;

//작업단계 결과별 보험비 결과 db
public class WrInsurancePay {	
	private int wrInsurancepayNumber; //보험비 결과 넘버
	private PpWoResult ppWoResult; //작업단계결과 넘버 외래키 기능 위한 객체
	private WoInsurancePay woInsurancePay; //예상 보험비 넘버 외래키 키능 위한 객체
	private double wrInsurancepayMonthcost; //작업단계결과별 실제 납부한 보험비(월)
	private Date wrInsurancepayDate; //보험비 납부일
	
	//작업단계결과 생성자메서드
	public WrInsurancePay() {
		this.ppWoResult = new PpWoResult();
	}
	
	public int getWrInsurancepayNumber() {
		return wrInsurancepayNumber;
	}
	public void setWrInsurancepayNumber(int wrInsurancepayNumber) {
		this.wrInsurancepayNumber = wrInsurancepayNumber;
	}
	public PpWoResult getPpWoResult() {
		return ppWoResult;
	}
	public void setPpWoResult(PpWoResult ppWoResult) {
		this.ppWoResult = ppWoResult;
	}
	public WoInsurancePay getWoInsurancePay() {
		return woInsurancePay;
	}
	public void setWoInsurancePay(WoInsurancePay woInsurancePay) {
		this.woInsurancePay = woInsurancePay;
	}
	public double getWrInsurancepayMonthcost() {
		return wrInsurancepayMonthcost;
	}
	public void setWrInsurancepayMonthcost(double wrInsurancepayMonthcost) {
		this.wrInsurancepayMonthcost = wrInsurancepayMonthcost;
	}
	public Date getWrInsurancepayDate() {
		return wrInsurancepayDate;
	}
	public void setWrInsurancepayDate(Date wrInsurancepayDate) {
		this.wrInsurancepayDate = wrInsurancepayDate;
	}
	@Override
	public String toString() {
		return "WrInsurancePay [wrInsurancepayNumber=" + wrInsurancepayNumber + ", ppWoResult=" + ppWoResult
				+ ", woInsurancePay=" + woInsurancePay + ", wrInsurancepayMonthcost=" + wrInsurancepayMonthcost
				+ ", wrInsurancepayDate=" + wrInsurancepayDate + "]";
	}	
}