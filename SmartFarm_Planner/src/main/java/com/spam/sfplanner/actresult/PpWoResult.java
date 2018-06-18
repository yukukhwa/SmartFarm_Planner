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
	private List<WrEtcSpendPay> wrEtcSpendPayList; //작업단계결과별 기타지출비용결과 리스트객체
	private List<WrHumanPay> wrHumanPayList; //작업단계결과별 인건비결과 리스트객체
	private List<WrMaterialsPay> wrMaterialsPayList; //작업단계결과별 원자재비결과 리스트객체
	private List<WrInsurancePay> wrInsurancePayList; //작업단계결과별 보험비결과 리스트객체
	private List<WrNeedEquip> wrNeedEquipList; //작업단계결과별 필요장비결과 리스트객체
	
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
	public List<WrEtcSpendPay> getWrEtcSpendPayList() {
		return wrEtcSpendPayList;
	}
	public void setWrEtcSpendPayList(List<WrEtcSpendPay> wrEtcSpendPayList) {
		this.wrEtcSpendPayList = wrEtcSpendPayList;
	}
	public List<WrHumanPay> getWrHumanPayList() {
		return wrHumanPayList;
	}
	public void setWrHumanPayList(List<WrHumanPay> wrHumanPayList) {
		this.wrHumanPayList = wrHumanPayList;
	}
	public List<WrMaterialsPay> getWrMaterialsPayList() {
		return wrMaterialsPayList;
	}
	public void setWrMaterialsPayList(List<WrMaterialsPay> wrMaterialsPayList) {
		this.wrMaterialsPayList = wrMaterialsPayList;
	}
	public List<WrInsurancePay> getWrInsurancePayList() {
		return wrInsurancePayList;
	}
	public void setWrInsurancePayList(List<WrInsurancePay> wrInsurancePayList) {
		this.wrInsurancePayList = wrInsurancePayList;
	}
	public List<WrNeedEquip> getWrNeedEquipList() {
		return wrNeedEquipList;
	}
	public void setWrNeedEquipList(List<WrNeedEquip> wrNeedEquipList) {
		this.wrNeedEquipList = wrNeedEquipList;
	}
	@Override
	public String toString() {
		return "PpWoResult [wrNumber=" + wrNumber + ", actResult=" + actResult + ", ppWork=" + ppWork + ", wrTotalarea="
				+ wrTotalarea + ", wrReworkarea=" + wrReworkarea + ", wrEtcSpendPayList=" + wrEtcSpendPayList
				+ ", wrHumanPayList=" + wrHumanPayList + ", wrMaterialsPayList=" + wrMaterialsPayList
				+ ", wrInsurancePayList=" + wrInsurancePayList + ", wrNeedEquipList=" + wrNeedEquipList + "]";
	}
	
}