/*[김기성]*/
package com.spam.sfplanner.login;

public class LoginDb {
	private String id; //회원 아이디
	private String pw; //회원 비번
	private String name; //회원 이름
	private String level; //권한 : 기관종류(농가, 업체, 관리기관)
	private String boss; //대표자인지 아닌지
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	@Override
	public String toString() {
		return "LoginDb [id=" + id + ", pw=" + pw + ", name=" + name + ", level=" + level + ", boss=" + boss + "]";
	}
}
