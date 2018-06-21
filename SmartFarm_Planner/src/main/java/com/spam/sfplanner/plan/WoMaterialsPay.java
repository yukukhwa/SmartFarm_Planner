/*[김재희]*/
package com.spam.sfplanner.plan;

import com.spam.sfplanner.category.CategoryMaterials;

public class WoMaterialsPay {
	private int eMaterialspayNumber; // 예상원자재비넘버
	private double eMaterialspayUnitcost; // 예상원자재비 단가
	private double eMaterialspayUse; // 원자재비 사용예정
	private String eMaterialspaySecret; // 원자재비 공개 비공개 여부
	private PpWork ppWork; // 작업단계
	private CategoryMaterials categoryMaterials; // 원자재 카테고리
	
	public WoMaterialsPay() {
		this.categoryMaterials = new CategoryMaterials();
		this.ppWork = new PpWork();
	}
	
	public int geteMaterialspayNumber() {
		return eMaterialspayNumber;
	}
	public void seteMaterialspayNumber(int eMaterialspayNumber) {
		this.eMaterialspayNumber = eMaterialspayNumber;
	}
	public double geteMaterialspayUnitcost() {
		return eMaterialspayUnitcost;
	}
	public void seteMaterialspayUnitcost(double eMaterialspayUnitcost) {
		this.eMaterialspayUnitcost = eMaterialspayUnitcost;
	}
	public double geteMaterialspayUse() {
		return eMaterialspayUse;
	}
	public void seteMaterialspayUse(double eMaterialspayUse) {
		this.eMaterialspayUse = eMaterialspayUse;
	}
	public String geteMaterialspaySecret() {
		return eMaterialspaySecret;
	}
	public void seteMaterialspaySecret(String eMaterialspaySecret) {
		this.eMaterialspaySecret = eMaterialspaySecret;
	}
	public PpWork getPpWork() {
		return ppWork;
	}
	public void setPpWork(PpWork ppWork) {
		this.ppWork = ppWork;
	}
	public CategoryMaterials getCategoryMaterials() {
		return categoryMaterials;
	}
	public void setCategoryMaterials(CategoryMaterials categoryMaterials) {
		this.categoryMaterials = categoryMaterials;
	}
	
	@Override
	public String toString() {
		return "WoMaterialsPay [eMaterialspayNumber=" + eMaterialspayNumber + ", eMaterialspayUnitcost="
				+ eMaterialspayUnitcost + ", eMaterialspayUse=" + eMaterialspayUse + ", eMaterialspaySecret="
				+ eMaterialspaySecret + ", ppWork=" + ppWork + ", categoryMaterials=" + categoryMaterials + "]";
	}	
	
}
