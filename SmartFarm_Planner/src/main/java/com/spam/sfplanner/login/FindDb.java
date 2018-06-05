// [유국화]
package com.spam.sfplanner.login;

public class FindDb {
	/*
	 * 입력받은 회원정보로 아이디, 비번 찾기
	 */
	private String Corp;
	private String CorpName;
	private String MemberId;
	private String MemberName;
	private String MemberEmail;
	public String getCorp() {
		return Corp;
	}
	public void setCorp(String corp) {
		Corp = corp;
	}
	public String getCorpName() {
		return CorpName;
	}
	public void setCorpName(String corpName) {
		CorpName = corpName;
	}
	public String getMemberId() {
		return MemberId;
	}
	public void setMemberId(String memberId) {
		MemberId = memberId;
	}
	public String getMemberName() {
		return MemberName;
	}
	public void setMemberName(String memberName) {
		MemberName = memberName;
	}
	public String getMemberEmail() {
		return MemberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		MemberEmail = memberEmail;
	}
	@Override
	public String toString() {
		return "FindDb [Corp=" + Corp + ", CorpName=" + CorpName + ", MemberId=" + MemberId + ", MemberName="
				+ MemberName + ", MemberEmail=" + MemberEmail + "]";
	}
	
}