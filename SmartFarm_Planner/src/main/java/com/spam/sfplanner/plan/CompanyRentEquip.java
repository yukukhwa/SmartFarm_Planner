package com.spam.sfplanner.plan;

import java.util.Date;

import com.spam.sfplanner.category.CategoryEquip;
import com.spam.sfplanner.corporation.Company;

public class CompanyRentEquip {
	private int cRentNumber; //대여가능장비넘버
	private Company company; //업체테이블
	private CategoryEquip categoryEquip; //장비종류카테고리테이블
	private double cRentCost; //대당사용료
	private double cRentDate; //단위시간
	private String cRentModelname; //모델명
	private	Date cRentRegistdate; //장비등록일
	public int getcRentNumber() {
		return cRentNumber;
	}
	public void setcRentNumber(int cRentNumber) {
		this.cRentNumber = cRentNumber;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public CategoryEquip getCategoryEquip() {
		return categoryEquip;
	}
	public void setCategoryEquip(CategoryEquip categoryEquip) {
		this.categoryEquip = categoryEquip;
	}
	public double getcRentCost() {
		return cRentCost;
	}
	public void setcRentCost(double cRentCost) {
		this.cRentCost = cRentCost;
	}
	public double getcRentDate() {
		return cRentDate;
	}
	public void setcRentDate(double cRentDate) {
		this.cRentDate = cRentDate;
	}
	public String getcRentModelname() {
		return cRentModelname;
	}
	public void setcRentModelname(String cRentModelname) {
		this.cRentModelname = cRentModelname;
	}
	public Date getcRentRegistdate() {
		return cRentRegistdate;
	}
	public void setcRentRegistdate(Date cRentRegistdate) {
		this.cRentRegistdate = cRentRegistdate;
	}
	@Override
	public String toString() {
		return "CompanyRentEquip [cRentNumber=" + cRentNumber + ", company=" + company + ", categoryEquip="
				+ categoryEquip + ", cRentCost=" + cRentCost + ", cRentDate=" + cRentDate + ", cRentModelname="
				+ cRentModelname + ", cRentRegistdate=" + cRentRegistdate + "]";
	}
	
}
