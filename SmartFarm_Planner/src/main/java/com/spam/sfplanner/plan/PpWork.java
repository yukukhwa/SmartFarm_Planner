/*[김재희]*/
package com.spam.sfplanner.plan;

import java.sql.Date;
import java.util.List;

import com.spam.sfplanner.corporation.Farm;

public class PpWork {
	private int ppWorkNumber; // 작업단계넘버
	private int ppNumber; // 작업단계넘버
	private int fNumber; // 농가통합넘버
	private String ppWorkName; // 작업명
	private Date ppWorkStartday; // 작업시작일
	private Date ppWorkEndday; // 작업완료일
	private double ppWorkArea; // 작업면적
	private String ppWorkContent; // 작업내용상세
	private Farm farm;
	private ProductionPlan productionPlan;
	private List<WoMaterialsPay> woMaterialsPayList; // 작업단계 내의 예상 원자재비 리스트
	private List<WoHumanPay> woHumanPayList; // 작업단계 내의 예상 인건비 리스트
	private List<WoInsurancePay> woInsurancePayList; // 작업단계 내의 예상 보험비 리스트
	
	public PpWork() {
		this.farm = new Farm();
		this.productionPlan = new ProductionPlan();
	}
	
	public int getPpWorkNumber() {
		return ppWorkNumber;
	}
	public void setPpWorkNumber(int ppWorkNumber) {
		this.ppWorkNumber = ppWorkNumber;
	}
	public int getPpNumber() {
		return ppNumber;
	}
	public void setPpNumber(int ppNumber) {
		this.ppNumber = ppNumber;
	}
	public int getfNumber() {
		return fNumber;
	}
	public void setfNumber(int fNumber) {
		this.fNumber = fNumber;
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
	@Override
	public String toString() {
		return "PpWork [ppWorkNumber=" + ppWorkNumber + ", ppNumber=" + ppNumber + ", fNumber=" + fNumber
				+ ", ppWorkName=" + ppWorkName + ", ppWorkStartday=" + ppWorkStartday + ", ppWorkEndday=" + ppWorkEndday
				+ ", ppWorkArea=" + ppWorkArea + ", ppWorkContent=" + ppWorkContent + ", farm=" + farm
				+ ", productionPlan=" + productionPlan + ", woMaterialsPayList=" + woMaterialsPayList
				+ ", woHumanPayList=" + woHumanPayList + ", woInsurancePayList=" + woInsurancePayList + "]";
	}
	
	
}
