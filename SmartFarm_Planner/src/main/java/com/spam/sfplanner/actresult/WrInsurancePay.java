// [유국화]
package com.spam.sfplanner.actresult;
import java.util.Date;

//작업단계 결과별 보험비 결과 db
public class WrInsurancePay {	
	private int wrInsurancepayNumber; //보험비 결과 넘버
	private int wrNumber; //작업단계결과 넘버
	private int eInsurancepayNumber; //예상 보험비 넘버
	private double wrInsurancepayMonthcost; //작업단계결과별 실제 납부한 보험비(월)
	private Date wrInsurancepayDate; //보험비 납부일
	
	public int getWrInsurancepayNumber() {
		return wrInsurancepayNumber;
	}
	public void setWrInsurancepayNumber(int wrInsurancepayNumber) {
		this.wrInsurancepayNumber = wrInsurancepayNumber;
	}
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public int geteInsurancepayNumber() {
		return eInsurancepayNumber;
	}
	public void seteInsurancepayNumber(int eInsurancepayNumber) {
		this.eInsurancepayNumber = eInsurancepayNumber;
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
		return "WrInsurancePay [wrInsurancepayNumber=" + wrInsurancepayNumber + ", wrNumber=" + wrNumber
				+ ", eInsurancepayNumber=" + eInsurancepayNumber + ", wrInsurancepayMonthcost="
				+ wrInsurancepayMonthcost + ", wrInsurancepayDate=" + wrInsurancepayDate + "]";
	}	
}