/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.List;

import com.spam.sfplanner.category.CategoryEquip;

public class WoNeedEquip {
	private int eNeedequipNumber; //예상필요장비넘버
	private PpWork ppWork; //작업단계테이블
	private CategoryEquip categoryEquip; //장비종류카테고리
	private String eNeedequipState; //계획시 보유상태
	private List<WoNeRentPay> woNeRentPayList;
	public int geteNeedequipNumber() {
		return eNeedequipNumber;
	}
	public void seteNeedequipNumber(int eNeedequipNumber) {
		this.eNeedequipNumber = eNeedequipNumber;
	}
	public PpWork getPpWork() {
		return ppWork;
	}
	public void setPpWork(PpWork ppWork) {
		this.ppWork = ppWork;
	}
	public CategoryEquip getCategoryEquip() {
		return categoryEquip;
	}
	public void setCategoryEquip(CategoryEquip categoryEquip) {
		this.categoryEquip = categoryEquip;
	}
	public String geteNeedequipState() {
		return eNeedequipState;
	}
	public void seteNeedequipState(String eNeedequipState) {
		this.eNeedequipState = eNeedequipState;
	}
	public List<WoNeRentPay> getWoNeRentPayList() {
		return woNeRentPayList;
	}
	public void setWoNeRentPayList(List<WoNeRentPay> woNeRentPayList) {
		this.woNeRentPayList = woNeRentPayList;
	}
	@Override
	public String toString() {
		return "WoNeedEquip [eNeedequipNumber=" + eNeedequipNumber + ", ppWork=" + ppWork + ", categoryEquip="
				+ categoryEquip + ", eNeedequipState=" + eNeedequipState + ", woNeRentPayList=" + woNeRentPayList + "]";
	}
	
}
