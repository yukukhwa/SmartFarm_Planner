//배건혜
package com.spam.sfplanner.corporation;

import java.util.Date;

import com.spam.sfplanner.category.CategoryDeal;
import com.spam.sfplanner.user.CompanyMember;

public class Company {
	private int cNumber;  //업체통합넘버
	private CategoryDeal categoryDeal; //거래처카테고리 넘버
	private String cName;  //업체명
	private CompanyMember companyMember;
	private String cDoroaddress;  //업체도로명주소
	private String cJibunaddress;  //업체지번주소
	private String cPhone;  //업체연락처
	private Date cRegistdate;  //업체등록일자
	private double cParty;  //업체인원
	public int getcNumber() {
		return cNumber;
	}
	public void setcNumber(int cNumber) {
		this.cNumber = cNumber;
	}
	public CategoryDeal getCategoryDeal() {
		return categoryDeal;
	}
	public void setCategoryDeal(CategoryDeal categoryDeal) {
		this.categoryDeal = categoryDeal;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public CompanyMember getCompanyMember() {
		return companyMember;
	}
	public void setCompanyMember(CompanyMember companyMember) {
		this.companyMember = companyMember;
	}
	public String getcDoroaddress() {
		return cDoroaddress;
	}
	public void setcDoroaddress(String cDoroaddress) {
		this.cDoroaddress = cDoroaddress;
	}
	public String getcJibunaddress() {
		return cJibunaddress;
	}
	public void setcJibunaddress(String cJibunaddress) {
		this.cJibunaddress = cJibunaddress;
	}
	public String getcPhone() {
		return cPhone;
	}
	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}
	public Date getcRegistdate() {
		return cRegistdate;
	}
	public void setcRegistdate(Date cRegistdate) {
		this.cRegistdate = cRegistdate;
	}
	public double getcParty() {
		return cParty;
	}
	public void setcParty(double cParty) {
		this.cParty = cParty;
	}
	@Override
	public String toString() {
		return "Company [cNumber=" + cNumber + ", categoryDeal=" + categoryDeal + ", cName=" + cName
				+ ", companyMember=" + companyMember + ", cDoroaddress=" + cDoroaddress + ", cJibunaddress="
				+ cJibunaddress + ", cPhone=" + cPhone + ", cRegistdate=" + cRegistdate + ", cParty=" + cParty + "]";
	}
	

}
