//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;

//실행결과리스트별 작업단계 결과 db
public class PpWoResult {
	private int wrNumber; //실행결과리스트별 작업단계 결과 넘버
	private int ppResultlistNumber; //실행결과리스트 넘버
	private int ppWorkNumber; //실행결과리스트별 작업단계넘버
	private double wrTotalarea; //실행결과 작업 총 면적
	private double wrReworkarea; //실행결과 다시 작업한 면적
	private List<WrInsurancePay> wrInsurancePay; //작업단계별 보험비
	private List<WrEtcSpendPay> wrEtcSpendPay; //작업단계 결과별 기타지출비용
	private List<WrMaterialsPay> wrMaterialsPay; //작업단계 결과별 원자재비
	private List<WrNeedEquip> wrNeedEquip; //작업단계 결과별 필요장비-대여비
	private List<WrHumanPay> wrHumanPay; //작업단계 결과별 인건비
	private List<Memo> memo; //메모
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
	public List<WrInsurancePay> getWrInsurancePayDb() {
		return wrInsurancePay;
	}
	public void setWrInsurancePayDb(List<WrInsurancePay> wrInsurancePay) {
		this.wrInsurancePay = wrInsurancePay;
	}
	public List<WrEtcSpendPay> getWrEtcSpendPayDb() {
		return wrEtcSpendPay;
	}
	public void setWrEtcSpendPayDb(List<WrEtcSpendPay> wrEtcSpendPay) {
		this.wrEtcSpendPay = wrEtcSpendPay;
	}
	public List<WrMaterialsPay> getWrMaterialsPayDb() {
		return wrMaterialsPay;
	}
	public void setWrMaterialsPayDb(List<WrMaterialsPay> wrMaterialsPay) {
		this.wrMaterialsPay = wrMaterialsPay;
	}
	public List<WrNeedEquip> getWrNeedEquipDb() {
		return wrNeedEquip;
	}
	public void setWrNeedEquipDb(List<WrNeedEquip> wrNeedEquip) {
		this.wrNeedEquip = wrNeedEquip;
	}
	public List<WrHumanPay> getWrHumanPayDb() {
		return wrHumanPay;
	}
	public void setWrHumanPayDb(List<WrHumanPay> wrHumanPay) {
		this.wrHumanPay = wrHumanPay;
	}
	public List<Memo> getMemoDb() {
		return memo;
	}
	public void setMemoDb(List<Memo> memo) {
		this.memo = memo;
	}
	@Override
	public String toString() {
		return "PpWoResult [wrNumber=" + wrNumber + ", ppResultlistNumber=" + ppResultlistNumber + ", ppWorkNumber="
				+ ppWorkNumber + ", wrTotalarea=" + wrTotalarea + ", wrReworkarea=" + wrReworkarea
				+ ", wrInsurancePay=" + wrInsurancePay + ", wrEtcSpendPay=" + wrEtcSpendPay
				+ ", wrMaterialsPay=" + wrMaterialsPay + ", wrNeedEquip=" + wrNeedEquip + ", wrHumanPay="
				+ wrHumanPay + ", memo=" + memo + "]";
	}	
}