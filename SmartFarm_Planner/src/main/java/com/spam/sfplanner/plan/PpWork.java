/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.Date;

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
	@Override
	public String toString() {
		return "PpWork [ppWorkNumber=" + ppWorkNumber + ", ppNumber=" + ppNumber + ", fNumber=" + fNumber
				+ ", ppWorkName=" + ppWorkName + ", ppWorkStartday=" + ppWorkStartday + ", ppWorkEndday=" + ppWorkEndday
				+ ", ppWorkArea=" + ppWorkArea + ", ppWorkContent=" + ppWorkContent + ", farm=" + farm
				+ ", productionPlan=" + productionPlan + "]";
	}
	
}
