/*[김기성]*/
package com.spam.sfplanner.login;

public class LoginDb {
	private String id;
	private String pw;
	
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
	
	@Override
	public String toString() {
		return "LoginDb [id=" + id + ", pw=" + pw + "]";
	}
}
