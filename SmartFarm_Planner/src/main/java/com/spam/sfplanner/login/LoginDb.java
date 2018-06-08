/*[김기성]*/
package com.spam.sfplanner.login;

public class LoginDb {
	private String id; //회원 아이디
	private String pw; //회원 비번
	private String memberName; //회원 이름
	private String level; //권한 : 기관종류(농가, 업체, 관리기관)
	private String boss; //대표자인지 아닌지
	private String corpName; //회사 이름
	private int corpNumber; // 회사 넘버
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getBoss() {
		return boss;
	}
	public void setBoss(String boss) {
		this.boss = boss;
	}
	public String getCorpName() {
		return corpName;
	}
	public void setCorpName(String corpName) {
		this.corpName = corpName;
	}
	public int getCorpNumber() {
		return corpNumber;
	}
	public void setCorpNumber(int corpNumber) {
		this.corpNumber = corpNumber;
	}
	
	@Override
	public String toString() {
		return "LoginDb [id=" + id + ", pw=" + pw + ", memberName=" + memberName + ", level=" + level + ", boss=" + boss
				+ ", corpName=" + corpName + ", corpNumber=" + corpNumber + "]";
	}
}
