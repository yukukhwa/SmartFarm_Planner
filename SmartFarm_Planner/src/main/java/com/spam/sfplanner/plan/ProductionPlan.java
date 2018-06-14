/*나성수*/
package com.spam.sfplanner.plan;

import java.util.Date;

import com.spam.sfplanner.user.FarmMember;

/*
 * 데이터베이스 : cjsghka
 * 테이블 : sp_pp(계획서)
 */
public class ProductionPlan {
	private int ppNumber; // 계획서넘버
	private Date ppStartday; // 생산계획시작일
	private Date ppEndday; // 생산계획완료일
	private double ppOwnarea; // 소유한면적
	private double ppRentarea; // 임대한면적
	private Date ppRecordday; // 작성일자
	private String ppSecret; // 공개&비공개 여부
	private FarmMember farmMember; // 농가 회원 테이블
	private TitlePlan titlePlan; // 계획명 테이블
	public int getPpNumber() {
		return ppNumber;
	}
	public void setPpNumber(int ppNumber) {
		this.ppNumber = ppNumber;
	}
	public Date getPpStartday() {
		return ppStartday;
	}
	public void setPpStartday(Date ppStartday) {
		this.ppStartday = ppStartday;
	}
	public Date getPpEndday() {
		return ppEndday;
	}
	public void setPpEndday(Date ppEndday) {
		this.ppEndday = ppEndday;
	}
	public double getPpOwnarea() {
		return ppOwnarea;
	}
	public void setPpOwnarea(double ppOwnarea) {
		this.ppOwnarea = ppOwnarea;
	}
	public double getPpRentarea() {
		return ppRentarea;
	}
	public void setPpRentarea(double ppRentarea) {
		this.ppRentarea = ppRentarea;
	}
	public Date getPpRecordday() {
		return ppRecordday;
	}
	public void setPpRecordday(Date ppRecordday) {
		this.ppRecordday = ppRecordday;
	}
	public String getPpSecret() {
		return ppSecret;
	}
	public void setPpSecret(String ppSecret) {
		this.ppSecret = ppSecret;
	}
	public FarmMember getFarmMemberDb() {
		return farmMember;
	}
	public void setFarmMemberDb(FarmMember farmMember) {
		this.farmMember = farmMember;
	}
	public TitlePlan getTitlePlanDb() {
		return titlePlan;
	}
	public void setTitlePlanDb(TitlePlan titlePlan) {
		this.titlePlan = titlePlan;
	}
	@Override
	public String toString() {
		return "ProductionPlan [ppNumber=" + ppNumber + ", ppStartday=" + ppStartday + ", ppEndday=" + ppEndday
				+ ", ppOwnarea=" + ppOwnarea + ", ppRentarea=" + ppRentarea + ", ppRecordday=" + ppRecordday
				+ ", ppSecret=" + ppSecret + ", farmMember=" + farmMember + ", titlePlan=" + titlePlan + "]";
	}
}