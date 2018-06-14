package com.spam.sfplanner.actresult;

public class Memo {
	private int wrMemoNumber;
	private int themeNumber;
	private int wrNumber;
	private String wrMemoSubject;
	private String wrMemoContent;
	private MemoFile memoFile;
	
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
	public MemoFile getMemoFileDb() {
		return memoFile;
	}
	public void setMemoFileDb(MemoFile memoFile) {
		this.memoFile = memoFile;
	}
	
	@Override
	public String toString() {
		return "Memo [wrMemoNumber=" + wrMemoNumber + ", themeNumber=" + themeNumber + ", wrNumber=" + wrNumber
				+ ", wrMemoSubject=" + wrMemoSubject + ", wrMemoContent=" + wrMemoContent + ", memoFile=" + memoFile
				+ "]";
	}
}
