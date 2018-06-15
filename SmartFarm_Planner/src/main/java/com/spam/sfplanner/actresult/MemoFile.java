/*나성수*/
package com.spam.sfplanner.actresult;

/**
 * @데이터베이스 cjsghka
 * @테이블 sp_memo_file(메모파일)
 * @담당자 나성수
 */
public class MemoFile {
	private int memoFileNumber; //메모파일넘버
	private String memoFileRealname; //원래파일명
	private String memoFileRandomname; //랜덤파일명
	private String memoFileExt; //파일확장자
	private String memoFileType; //파일타입
	private String memoFileSize; //파일사이즈
	private String memoFileDate; //등록일자
	private Memo memo; //메모테이블
	public int getMemoFileNumber() {
		return memoFileNumber;
	}
	public void setMemoFileNumber(int memoFileNumber) {
		this.memoFileNumber = memoFileNumber;
	}
	public String getMemoFileRealname() {
		return memoFileRealname;
	}
	public void setMemoFileRealname(String memoFileRealname) {
		this.memoFileRealname = memoFileRealname;
	}
	public String getMemoFileRandomname() {
		return memoFileRandomname;
	}
	public void setMemoFileRandomname(String memoFileRandomname) {
		this.memoFileRandomname = memoFileRandomname;
	}
	public String getMemoFileExt() {
		return memoFileExt;
	}
	public void setMemoFileExt(String memoFileExt) {
		this.memoFileExt = memoFileExt;
	}
	public String getMemoFileType() {
		return memoFileType;
	}
	public void setMemoFileType(String memoFileType) {
		this.memoFileType = memoFileType;
	}
	public String getMemoFileSize() {
		return memoFileSize;
	}
	public void setMemoFileSize(String memoFileSize) {
		this.memoFileSize = memoFileSize;
	}
	public String getMemoFileDate() {
		return memoFileDate;
	}
	public void setMemoFileDate(String memoFileDate) {
		this.memoFileDate = memoFileDate;
	}
	public Memo getMemo() {
		return memo;
	}
	public void setMemo(Memo memo) {
		this.memo = memo;
	}
	@Override
	public String toString() {
		return "MemoFile [memoFileNumber=" + memoFileNumber + ", memoFileRealname=" + memoFileRealname
				+ ", memoFileRandomname=" + memoFileRandomname + ", memoFileExt=" + memoFileExt + ", memoFileType="
				+ memoFileType + ", memoFileSize=" + memoFileSize + ", memoFileDate=" + memoFileDate + ", memo=" + memo
				+ "]";
	}
}
