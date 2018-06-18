/*[김기성]*/
package com.spam.sfplanner.actresult;


import java.sql.Date;
import java.util.List;

import com.spam.sfplanner.plan.ProductionPlan;
import com.spam.sfplanner.user.FarmMember;
import com.spam.sfplanner.corporation.Farm;

public class ActResult {
	private int ppResultlistNumber; // 실행결과 리스트 기본키
	private ProductionPlan productionPlan; // 계획서넘버 외래키 대신 계획서 객체를 놓았다.
	private Farm farm; // 농가통합넘버 외래키 대신 농가 객체를 놓았다.
	private Date ppResultlistDate; // 실행결과리스트 작성일
	private FarmMember farmMember; // 농가회원아이디 외래키 대신 농가회원 객체를 놓았다.
	private List<PpWoResult> ppWoResultList; //1:N관계를 위한 작업단계객체 리스트
	
	public int getPpResultlistNumber() {
		return ppResultlistNumber;
	}
	public void setPpResultlistNumber(int ppResultlistNumber) {
		this.ppResultlistNumber = ppResultlistNumber;
	}
	public ProductionPlan getProductionPlan() {
		return productionPlan;
	}
	public void setProductionPlan(ProductionPlan productionPlan) {
		this.productionPlan = productionPlan;
	}
	public Farm getFarm() {
		return farm;
	}
	public void setFarm(Farm farm) {
		this.farm = farm;
	}
	public Date getPpResultlistDate() {
		return ppResultlistDate;
	}
	public void setPpResultlistDate(Date ppResultlistDate) {
		this.ppResultlistDate = ppResultlistDate;
	}
	public FarmMember getFarmMember() {
		return farmMember;
	}
	public void setFarmMember(FarmMember farmMember) {
		this.farmMember = farmMember;
	}
	public List<PpWoResult> getPpWoResultList() {
		return ppWoResultList;
	}
	public void setPpWoResultList(List<PpWoResult> ppWoResultList) {
		this.ppWoResultList = ppWoResultList;
	}
	
	@Override
	public String toString() {
		return "ActResult [ppResultlistNumber=" + ppResultlistNumber + ", productionPlan=" + productionPlan + ", farm="
				+ farm + ", ppResultlistDate=" + ppResultlistDate + ", farmMember=" + farmMember + ", ppWoResultList="
				+ ppWoResultList + "]";
	}
}

