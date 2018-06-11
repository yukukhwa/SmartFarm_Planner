package com.spam.sfplanner.actresult;

import java.util.List;

public class ActResultDb {
	private int wrNumber;
	private List<WrHumanPayDb> wrHumanPayDb;
	
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public List<WrHumanPayDb> getWrHumanPayDb() {
		return wrHumanPayDb;
	}
	public void setWrHumanPayDb(List<WrHumanPayDb> wrHumanPayDb) {
		this.wrHumanPayDb = wrHumanPayDb;
	}
	
}
