/*나성수*/
package com.spam.sfplanner.actresult;

import java.util.List;

import com.spam.sfplanner.category.CategoryTheme;

/**
 * @데이터베이스 cjsghka
 * @테이블 sp_wr_memo(메모)
 * @담당자 나성수
 */
public class Memo {
	private int wrMemoNumber; //메모넘버
	private String wrMemoSubject; //메모주제
	private String wrMemoContent; //메모내용
	private CategoryTheme categoryTheme; //테마카테고리 테이블
	private PpWoResult ppWoResult; //실행결과작업단계테이블
	private List<MemoFile> memoFile; //메모파일리스트
	public int getWrMemoNumber() {
		return wrMemoNumber;
	}
	public void setWrMemoNumber(int wrMemoNumber) {
		this.wrMemoNumber = wrMemoNumber;
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
	public CategoryTheme getCategoryTheme() {
		return categoryTheme;
	}
	public void setCategoryTheme(CategoryTheme categoryTheme) {
		this.categoryTheme = categoryTheme;
	}
	public PpWoResult getPpWoResult() {
		return ppWoResult;
	}
	public void setPpWoResult(PpWoResult ppWoResult) {
		this.ppWoResult = ppWoResult;
	}
	public List<MemoFile> getMemoFile() {
		return memoFile;
	}
	public void setMemoFile(List<MemoFile> memoFile) {
		this.memoFile = memoFile;
	}
	@Override
	public String toString() {
		return "Memo [wrMemoNumber=" + wrMemoNumber + ", wrMemoSubject=" + wrMemoSubject + ", wrMemoContent="
				+ wrMemoContent + ", categoryTheme=" + categoryTheme + ", ppWoResult=" + ppWoResult + ", memoFile="
				+ memoFile + "]";
	}
}
