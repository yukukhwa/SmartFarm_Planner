package com.spam.sfplanner.actresult;

import java.util.Date;

public class MemoFileDb {
	private int memo_file_number;
	private int wr_memo_number;
	private String memo_file_realname;
	private String memo_file_randomname;
	private String memo_file_ext;
	private String memo_file_type;
	private double memo_file_size;
	private Date memo_file_date;
	
	public int getMemo_file_number() {
		return memo_file_number;
	}
	public void setMemo_file_number(int memo_file_number) {
		this.memo_file_number = memo_file_number;
	}
	public int getWr_memo_number() {
		return wr_memo_number;
	}
	public void setWr_memo_number(int wr_memo_number) {
		this.wr_memo_number = wr_memo_number;
	}
	public String getMemo_file_realname() {
		return memo_file_realname;
	}
	public void setMemo_file_realname(String memo_file_realname) {
		this.memo_file_realname = memo_file_realname;
	}
	public String getMemo_file_randomname() {
		return memo_file_randomname;
	}
	public void setMemo_file_randomname(String memo_file_randomname) {
		this.memo_file_randomname = memo_file_randomname;
	}
	public String getMemo_file_ext() {
		return memo_file_ext;
	}
	public void setMemo_file_ext(String memo_file_ext) {
		this.memo_file_ext = memo_file_ext;
	}
	public String getMemo_file_type() {
		return memo_file_type;
	}
	public void setMemo_file_type(String memo_file_type) {
		this.memo_file_type = memo_file_type;
	}
	public double getMemo_file_size() {
		return memo_file_size;
	}
	public void setMemo_file_size(double memo_file_size) {
		this.memo_file_size = memo_file_size;
	}
	public Date getMemo_file_date() {
		return memo_file_date;
	}
	public void setMemo_file_date(Date memo_file_date) {
		this.memo_file_date = memo_file_date;
	}
	
	@Override
	public String toString() {
		return "MemoFileDb [memo_file_number=" + memo_file_number + ", wr_memo_number=" + wr_memo_number
				+ ", memo_file_realname=" + memo_file_realname + ", memo_file_randomname=" + memo_file_randomname
				+ ", memo_file_ext=" + memo_file_ext + ", memo_file_type=" + memo_file_type + ", memo_file_size="
				+ memo_file_size + ", memo_file_date=" + memo_file_date + "]";
	}
}
