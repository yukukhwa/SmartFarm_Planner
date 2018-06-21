/*[김재희]*/
package com.spam.sfplanner.plan;

import java.sql.Date;
import java.util.List;

import com.spam.sfplanner.corporation.Farm;

public class PpWork {
	private int ppWorkNumber; // 작업단계넘버
	private String ppWorkName; // 작업명
	private Date ppWorkStartday; // 작업시작일
	private Date ppWorkEndday; // 작업완료일
	private double ppWorkArea; // 작업면적
	private String ppWorkContent; // 작업내용상세
	private Farm farm; // 농가
	private ProductionPlan productionPlan; // 생산계획서
	private List<WoMaterialsPay> woMaterialsPayList; // 작업단계 내의 예상 원자재비 리스트
	private List<WoHumanPay> woHumanPayList; // 작업단계 내의 예상 인건비 리스트
	private List<WoInsurancePay> woInsurancePayList; // 작업단계 내의 예상 보험비 리스트
	private List<WoEtcSpendPay> woEtcSpendPayList; // 작업단계 내의 예상 기타지출비 리스트
	private List<WoNeedEquip> woNeedEquipList; // 작업단계 내의 필요장비 리스트
	public int getPpWorkNumber() {
		return ppWorkNumber;
	}
	public void setPpWorkNumber(int ppWorkNumber) {
		this.ppWorkNumber = ppWorkNumber;
	}
	public String getPpWorkName() {
		return ppWorkName;
	}
	public void setPpWorkName(String ppWorkName) {
		this.ppWorkName = ppWorkName;
	}
	public Date getPpWorkStartday() {
		return ppWorkStartday;
	}
	public void setPpWorkStartday(Date ppWorkStartday) {
		this.ppWorkStartday = ppWorkStartday;
	}
	public Date getPpWorkEndday() {
		return ppWorkEndday;
	}
	public void setPpWorkEndday(Date ppWorkEndday) {
		this.ppWorkEndday = ppWorkEndday;
	}
	public double getPpWorkArea() {
		return ppWorkArea;
	}
	public void setPpWorkArea(double ppWorkArea) {
		this.ppWorkArea = ppWorkArea;
	}
	public String getPpWorkContent() {
		return ppWorkContent;
	}
	public void setPpWorkContent(String ppWorkContent) {
		this.ppWorkContent = ppWorkContent;
	}
	public Farm getFarm() {
		return farm;
	}
	public void setFarm(Farm farm) {
		this.farm = farm;
	}
	public ProductionPlan getProductionPlan() {
		return productionPlan;
	}
	public void setProductionPlan(ProductionPlan productionPlan) {
		this.productionPlan = productionPlan;
	}
	public List<WoMaterialsPay> getWoMaterialsPayList() {
		return woMaterialsPayList;
	}
	public void setWoMaterialsPayList(List<WoMaterialsPay> woMaterialsPayList) {
		this.woMaterialsPayList = woMaterialsPayList;
	}
	public List<WoHumanPay> getWoHumanPayList() {
		return woHumanPayList;
	}
	public void setWoHumanPayList(List<WoHumanPay> woHumanPayList) {
		this.woHumanPayList = woHumanPayList;
	}
	public List<WoInsurancePay> getWoInsurancePayList() {
		return woInsurancePayList;
	}
	public void setWoInsurancePayList(List<WoInsurancePay> woInsurancePayList) {
		this.woInsurancePayList = woInsurancePayList;
	}
	public List<WoEtcSpendPay> getWoEtcSpendPayList() {
		return woEtcSpendPayList;
	}
	public void setWoEtcSpendPayList(List<WoEtcSpendPay> woEtcSpendPayList) {
		this.woEtcSpendPayList = woEtcSpendPayList;
	}
	public List<WoNeedEquip> getWoNeedEquipList() {
		return woNeedEquipList;
	}
	public void setWoNeedEquipList(List<WoNeedEquip> woNeedEquipList) {
		this.woNeedEquipList = woNeedEquipList;
	}
	@Override
	public String toString() {
		return "PpWork [ppWorkNumber=" + ppWorkNumber + ", ppWorkName=" + ppWorkName + ", ppWorkStartday="
				+ ppWorkStartday + ", ppWorkEndday=" + ppWorkEndday + ", ppWorkArea=" + ppWorkArea + ", ppWorkContent="
				+ ppWorkContent + ", farm=" + farm + ", productionPlan=" + productionPlan + ", woMaterialsPayList="
				+ woMaterialsPayList + ", woHumanPayList=" + woHumanPayList + ", woInsurancePayList="
				+ woInsurancePayList + ", woEtcSpendPayList=" + woEtcSpendPayList + ", woNeedEquipList="
				+ woNeedEquipList + "]";
	}
	
	
	
}
