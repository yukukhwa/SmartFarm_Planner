//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;

import com.spam.sfplanner.plan.PpWork;

//실행결과리스트별 작업단계 결과 db
public class PpWoResult {
	private int wrNumber; //실행결과리스트별 작업단계 결과 넘버
	private ActResult actResult; //실행결과리스트 넘버 외래키 기능 위한 객체
	private PpWork ppWork; //실행결과리스트별 작업단계넘버 외래키 기능 위한 객체
	private double wrTotalarea; //실행결과 작업 총 면적
	private double wrReworkarea; //실행결과 다시 작업한 면적
	private List<WrEtcSpendPay> wrEtcSpendPay; //작업단계결과별 기타지출비용결과 리스트객체
	private List<WrHumanPay> wrHumanPay; //작업단계결과별 인건비결과 리스트객체
	private List<WrMaterialsPay> wrMaterialsPay; //작업단계결과별 원자재비결과 리스트객체
	private List<WrInsurancePay> wrInsurancePay; //작업단계결과별 보험비결과 리스트객체
	private List<WrNeedEquip> wrNeedEquip; //작업단계결과별 필요장비결과 리스트객체
	
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public ActResult getActResult() {
		return actResult;
	}
	public void setActResult(ActResult actResult) {
		this.actResult = actResult;
	}
	public PpWork getPpWork() {
		return ppWork;
	}
	public void setPpWork(PpWork ppWork) {
		this.ppWork = ppWork;
	}
	public double getWrTotalarea() {
		return wrTotalarea;
	}
	public void setWrTotalarea(double wrTotalarea) {
		this.wrTotalarea = wrTotalarea;
	}
	public double getWrReworkarea() {
		return wrReworkarea;
	}
	public void setWrReworkarea(double wrReworkarea) {
		this.wrReworkarea = wrReworkarea;
	}
	public List<WrEtcSpendPay> getWrEtcSpendPay() {
		return wrEtcSpendPay;
	}
	public void setWrEtcSpendPay(List<WrEtcSpendPay> wrEtcSpendPay) {
		this.wrEtcSpendPay = wrEtcSpendPay;
	}
	public List<WrHumanPay> getWrHumanPay() {
		return wrHumanPay;
	}
	public void setWrHumanPay(List<WrHumanPay> wrHumanPay) {
		this.wrHumanPay = wrHumanPay;
	}
	public List<WrMaterialsPay> getWrMaterialsPay() {
		return wrMaterialsPay;
	}
	public void setWrMaterialsPay(List<WrMaterialsPay> wrMaterialsPay) {
		this.wrMaterialsPay = wrMaterialsPay;
	}
	public List<WrInsurancePay> getWrInsurancePay() {
		return wrInsurancePay;
	}
	public void setWrInsurancePay(List<WrInsurancePay> wrInsurancePay) {
		this.wrInsurancePay = wrInsurancePay;
	}
	public List<WrNeedEquip> getWrNeedEquip() {
		return wrNeedEquip;
	}
	public void setWrNeedEquip(List<WrNeedEquip> wrNeedEquip) {
		this.wrNeedEquip = wrNeedEquip;
	}
	@Override
	public String toString() {
		return "PpWoResult [wrNumber=" + wrNumber + ", actResult=" + actResult + ", ppWork=" + ppWork + ", wrTotalarea="
				+ wrTotalarea + ", wrReworkarea=" + wrReworkarea + ", wrEtcSpendPay=" + wrEtcSpendPay + ", wrHumanPay="
				+ wrHumanPay + ", wrMaterialsPay=" + wrMaterialsPay + ", wrInsurancePay=" + wrInsurancePay
				+ ", wrNeedEquip=" + wrNeedEquip + "]";
	}	
}