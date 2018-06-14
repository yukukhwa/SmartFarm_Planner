/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.Date;

import com.spam.sfplanner.corporation.FarmDb;

public class PpWorkDb {
	private int ppWorkNumber; // 작업단계넘버
	private int ppNumber; // 작업단계넘버
	private int fNumber; // 농가통합넘버
	private String ppWorkName; // 작업명
	private Date ppWorkStartday; // 작업시작일
	private Date ppWorkEndday; // 작업완료일
	private double ppWorkArea; // 작업면적
	private String ppWorkContent; // 작업내용상세
	private FarmDb farmDb;
	private ProductionPlanDb productionPlanDb;
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
	public FarmDb getFarmDb() {
		return farmDb;
	}
	public void setFarmDb(FarmDb farmDb) {
		this.farmDb = farmDb;
	}
	public ProductionPlanDb getProductionPlanDb() {
		return productionPlanDb;
	}
	public void setProductionPlanDb(ProductionPlanDb productionPlanDb) {
		this.productionPlanDb = productionPlanDb;
	}
	@Override
	public String toString() {
		return "PpWorkDb [ppWorkNumber=" + ppWorkNumber + ", ppNumber=" + ppNumber + ", fNumber=" + fNumber
				+ ", ppWorkName=" + ppWorkName + ", ppWorkStartday=" + ppWorkStartday + ", ppWorkEndday=" + ppWorkEndday
				+ ", ppWorkArea=" + ppWorkArea + ", ppWorkContent=" + ppWorkContent + ", farmDb=" + farmDb
				+ ", productionPlanDb=" + productionPlanDb + "]";
	}
	
}
