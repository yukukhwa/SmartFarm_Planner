//[유국화]
package com.spam.sfplanner.actresult;
import java.util.List;

import com.spam.sfplanner.category.CategoryEquip;
import com.spam.sfplanner.plan.WoNeedEquip;

//작업단계 결과별 필요장비결과 db
public class WrNeedEquip {
	private int wrNeedequipNumber; //필요장비 결과 넘버
	private PpWoResult ppWoResult; //작업단계결과 넘버 외래키 기능 위한 객체
	private WoNeedEquip woNeedEquip; //예상필요장비 넘버 외래키 기능 위한 객체
	private String wrNeedequipState; //실행할때 보유상태
	private List<WrNeRentPay> wrNeRentPayList; //필요장비결과별 대여비결과 리스트객체
	private CategoryEquip categoryEquip; //필요장비결과별 장비종류카테 넘버 외래키 기능 위한 객체
	
	public int getWrNeedequipNumber() {
		return wrNeedequipNumber;
	}
	public void setWrNeedequipNumber(int wrNeedequipNumber) {
		this.wrNeedequipNumber = wrNeedequipNumber;
	}
	public PpWoResult getPpWoResult() {
		return ppWoResult;
	}
	public void setPpWoResult(PpWoResult ppWoResult) {
		this.ppWoResult = ppWoResult;
	}
	public WoNeedEquip getWoNeedEquip() {
		return woNeedEquip;
	}
	public void setWoNeedEquip(WoNeedEquip woNeedEquip) {
		this.woNeedEquip = woNeedEquip;
	}
	public String getWrNeedequipState() {
		return wrNeedequipState;
	}
	public void setWrNeedequipState(String wrNeedequipState) {
		this.wrNeedequipState = wrNeedequipState;
	}
	public List<WrNeRentPay> getWrNeRentPayList() {
		return wrNeRentPayList;
	}
	public void setWrNeRentPayList(List<WrNeRentPay> wrNeRentPayList) {
		this.wrNeRentPayList = wrNeRentPayList;
	}
	public CategoryEquip getCategoryEquip() {
		return categoryEquip;
	}
	public void setCategoryEquip(CategoryEquip categoryEquip) {
		this.categoryEquip = categoryEquip;
	}
	@Override
	public String toString() {
		return "WrNeedEquip [wrNeedequipNumber=" + wrNeedequipNumber + ", ppWoResult=" + ppWoResult + ", woNeedEquip="
				+ woNeedEquip + ", wrNeedequipState=" + wrNeedequipState + ", wrNeRentPayList=" + wrNeRentPayList
				+ ", categoryEquip=" + categoryEquip + "]";
	}	
}