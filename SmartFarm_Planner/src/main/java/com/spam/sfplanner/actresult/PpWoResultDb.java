//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;

//실행결과리스트별 작업단계 결과 db
public class PpWoResultDb {
	private int wrNumber; //실행결과리스트별 작업단계 결과 넘버
	private int ppResultlistNumber; //실행결과리스트 넘버
	private int ppWorkNumber; //실행결과리스트별 작업단계넘버
	private double wrTotalarea; //실행결과 작업 총 면적
	private double wrReworkarea; //실행결과 다시 작업한 면적
	private List<WrInsurancePayDb> wrInsurancePayDb; //작업단계별 보험비
	private List<WrEtcSpendPayDb> wrEtcSpendPayDb; //작업단계 결과별 기타지출비용
	private List<WrMaterialsPayDb> wrMaterialsPayDb; //작업단계 결과별 원자재비
	private List<WrNeedEquipDb> wrNeedEquipDb; //작업단계 결과별 필요장비-대여비
	private List<WrHumanPayDb> wrHumanPayDb; //작업단계 결과별 인건비
	private List<MemoDb> memoDb; //메모
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
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
	public List<WrInsurancePayDb> getWrInsurancePayDb() {
		return wrInsurancePayDb;
	}
	public void setWrInsurancePayDb(List<WrInsurancePayDb> wrInsurancePayDb) {
		this.wrInsurancePayDb = wrInsurancePayDb;
	}
	public List<WrEtcSpendPayDb> getWrEtcSpendPayDb() {
		return wrEtcSpendPayDb;
	}
	public void setWrEtcSpendPayDb(List<WrEtcSpendPayDb> wrEtcSpendPayDb) {
		this.wrEtcSpendPayDb = wrEtcSpendPayDb;
	}
	public List<WrMaterialsPayDb> getWrMaterialsPayDb() {
		return wrMaterialsPayDb;
	}
	public void setWrMaterialsPayDb(List<WrMaterialsPayDb> wrMaterialsPayDb) {
		this.wrMaterialsPayDb = wrMaterialsPayDb;
	}
	public List<WrNeedEquipDb> getWrNeedEquipDb() {
		return wrNeedEquipDb;
	}
	public void setWrNeedEquipDb(List<WrNeedEquipDb> wrNeedEquipDb) {
		this.wrNeedEquipDb = wrNeedEquipDb;
	}
	public List<WrHumanPayDb> getWrHumanPayDb() {
		return wrHumanPayDb;
	}
	public void setWrHumanPayDb(List<WrHumanPayDb> wrHumanPayDb) {
		this.wrHumanPayDb = wrHumanPayDb;
	}
	public List<MemoDb> getMemoDb() {
		return memoDb;
	}
	public void setMemoDb(List<MemoDb> memoDb) {
		this.memoDb = memoDb;
	}
	@Override
	public String toString() {
		return "PpWoResultDb [wrNumber=" + wrNumber + ", ppResultlistNumber=" + ppResultlistNumber + ", ppWorkNumber="
				+ ppWorkNumber + ", wrTotalarea=" + wrTotalarea + ", wrReworkarea=" + wrReworkarea
				+ ", wrInsurancePayDb=" + wrInsurancePayDb + ", wrEtcSpendPayDb=" + wrEtcSpendPayDb
				+ ", wrMaterialsPayDb=" + wrMaterialsPayDb + ", wrNeedEquipDb=" + wrNeedEquipDb + ", wrHumanPayDb="
				+ wrHumanPayDb + ", memoDb=" + memoDb + "]";
	}	
}