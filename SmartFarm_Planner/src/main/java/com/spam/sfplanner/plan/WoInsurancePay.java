/*나성수*/
package com.spam.sfplanner.plan;

import java.sql.Date;

import com.spam.sfplanner.category.CategoryTheme;

/**
 * @데이터베이스 cjsghka
 * @테이블 sp_e_insurancepay(예상보험비)
 * @담당자 나성수
 */
public class WoInsurancePay {
	private int eInsurancepayNumber; //예상보험비넘버
	private String eInsurancepayMame; //보험명
	private String eInsurancepayContent;//보험내용(텍스트타입-100자이상)
	private Date eInsurancepayStartday;//보험가입일
	private Date eInsurancepayEndday;//보험만료일
	private double eInsurancepayTerm;//보험가입기간
	private double eInsurancepayTotalcost;//총보험비
	private double eInsurancepayExpectcost;//예상보험비(월)
	private String eInsurancepaySecret;//공개/비공개 여부
	private CategoryTheme categoryTheme;//테마테이블
	private PpWork ppWork;//작업단계테이블
	public int geteInsurancepayNumber() {
		return eInsurancepayNumber;
	}
	public void seteInsurancepayNumber(int eInsurancepayNumber) {
		this.eInsurancepayNumber = eInsurancepayNumber;
	}
	public String geteInsurancepayMame() {
		return eInsurancepayMame;
	}
	public void seteInsurancepayMame(String eInsurancepayMame) {
		this.eInsurancepayMame = eInsurancepayMame;
	}
	public String geteInsurancepayContent() {
		return eInsurancepayContent;
	}
	public void seteInsurancepayContent(String eInsurancepayContent) {
		this.eInsurancepayContent = eInsurancepayContent;
	}
	public Date geteInsurancepayStartday() {
		return eInsurancepayStartday;
	}
	public void seteInsurancepayStartday(Date eInsurancepayStartday) {
		this.eInsurancepayStartday = eInsurancepayStartday;
	}
	public Date geteInsurancepayEndday() {
		return eInsurancepayEndday;
	}
	public void seteInsurancepayEndday(Date eInsurancepayEndday) {
		this.eInsurancepayEndday = eInsurancepayEndday;
	}
	public double geteInsurancepayTerm() {
		return eInsurancepayTerm;
	}
	public void seteInsurancepayTerm(double eInsurancepayTerm) {
		this.eInsurancepayTerm = eInsurancepayTerm;
	}
	public double geteInsurancepayTotalcost() {
		return eInsurancepayTotalcost;
	}
	public void seteInsurancepayTotalcost(double eInsurancepayTotalcost) {
		this.eInsurancepayTotalcost = eInsurancepayTotalcost;
	}
	public double geteInsurancepayExpectcost() {
		return eInsurancepayExpectcost;
	}
	public void seteInsurancepayExpectcost(double eInsurancepayExpectcost) {
		this.eInsurancepayExpectcost = eInsurancepayExpectcost;
	}
	public String geteInsurancepaySecret() {
		return eInsurancepaySecret;
	}
	public void seteInsurancepaySecret(String eInsurancepaySecret) {
		this.eInsurancepaySecret = eInsurancepaySecret;
	}
	public CategoryTheme getCategoryTheme() {
		return categoryTheme;
	}
	public void setCategoryTheme(CategoryTheme categoryTheme) {
		this.categoryTheme = categoryTheme;
	}
	public PpWork getPpWork() {
		return ppWork;
	}
	public void setPpWork(PpWork ppWork) {
		this.ppWork = ppWork;
	}
	@Override
	public String toString() {
		return "WoInsurancePay [eInsurancepayNumber=" + eInsurancepayNumber + ", eInsurancepayMame=" + eInsurancepayMame
				+ ", eInsurancepayContent=" + eInsurancepayContent + ", eInsurancepayStartday=" + eInsurancepayStartday
				+ ", eInsurancepayEndday=" + eInsurancepayEndday + ", eInsurancepayTerm=" + eInsurancepayTerm
				+ ", eInsurancepayTotalcost=" + eInsurancepayTotalcost + ", eInsurancepayExpectcost="
				+ eInsurancepayExpectcost + ", eInsurancepaySecret=" + eInsurancepaySecret + ", categoryTheme="
				+ categoryTheme + ", ppWork=" + ppWork + "]";
	}
}
