package com.spam.sfplanner.actresult;

public class MemoDb {
	private int wrMemoNumber;
	private int themeNumber;
	private int wrNumber;
	private String wrMemoSubject;
	private String wrMemoContent;
	private MemoFileDb memoFileDb;
	
	public int getWrMemoNumber() {
		return wrMemoNumber;
	}
	public void setWrMemoNumber(int wrMemoNumber) {
		this.wrMemoNumber = wrMemoNumber;
	}
	public int getThemeNumber() {
		return themeNumber;
	}
	public void setThemeNumber(int themeNumber) {
		this.themeNumber = themeNumber;
	}
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public String getWrMemoSubject() {
		return wrMemoSubject;
	}
	public void setWrMemoSubject(String wrMemoSubject) {
		this.wrMemoSubject = wrMemoSubject;
	}
	public String getWrMemoContent() {
		return wrMemoContent;
	}
	public void setWrMemoContent(String wrMemoContent) {
		this.wrMemoContent = wrMemoContent;
	}
	public MemoFileDb getMemoFileDb() {
		return memoFileDb;
	}
	public void setMemoFileDb(MemoFileDb memoFileDb) {
		this.memoFileDb = memoFileDb;
	}
	
	@Override
	public String toString() {
		return "MemoDb [wrMemoNumber=" + wrMemoNumber + ", themeNumber=" + themeNumber + ", wrNumber=" + wrNumber
				+ ", wrMemoSubject=" + wrMemoSubject + ", wrMemoContent=" + wrMemoContent + ", memoFileDb=" + memoFileDb
				+ "]";
	}
}
