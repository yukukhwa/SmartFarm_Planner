package com.spam.sfplanner.actresult;

import java.util.List;

public class PpWoResultRequestDb {
	private int ppResultlistNumber;
	private int ppWorkNumber;
	private double wrTotalarea;
	private double wrReworkarea;
	private List<WrInsurancePayDb> insuranceList;
	public int getPpResultlistNumber() {
		return ppResultlistNumber;
	}
	public void setPpResultlistNumber(int ppResultlistNumber) {
		this.ppResultlistNumber = ppResultlistNumber;
	}
	public int getPpWorkNumber() {
		return ppWorkNumber;
	}
	public void setPpWorkNumber(int ppWorkNumber) {
		this.ppWorkNumber = ppWorkNumber;
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
	public List<WrInsurancePayDb> getInsuranceList() {
		return insuranceList;
	}
	public void setInsuranceList(List<WrInsurancePayDb> insuranceList) {
		this.insuranceList = insuranceList;
	}
}
