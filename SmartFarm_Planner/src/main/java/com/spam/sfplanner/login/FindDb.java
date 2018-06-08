// [유국화]
package com.spam.sfplanner.login;

public class FindDb {
	/*
	 * 입력받은 회원정보로 아이디, 비번 찾기
	 */
	private String corp; // 회사 분류
	private String corpName; // 회사분류명 (농가, 업체, 관리기관)
	private String memberId; // 회원 아이디
	private String memberName; // 회원 이름
	private String memberEmail; // 회원 이메일
	public String getCorp() {
		return corp;
	}
	public void setCorp(String corp) {
		this.corp = corp;
	}
	public String getCorpName() {
		return corpName;
	}
	public void setCorpName(String corpName) {
		this.corpName = corpName;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	@Override
	public String toString() {
		return "FindDb [corp=" + corp + ", corpName=" + corpName + ", memberId=" + memberId + ", memberName="
				+ memberName + ", memberEmail=" + memberEmail + "]";
	}
	
}