//[유국화]
package com.spam.sfplanner.actresult;
import com.spam.sfplanner.plan.PpWork;

//실행결과리스트별 작업단계 결과 db
public class PpWoResult {
	private int wrNumber; //실행결과리스트별 작업단계 결과 넘버
	private ActResult actResult; //실행결과리스트 넘버 외래키 기능 위한 객체
	private PpWork ppWork; //실행결과리스트별 작업단계넘버 외래키 기능 위한 객체
	private double wrTotalarea; //실행결과 작업 총 면적
	private double wrReworkarea; //실행결과 다시 작업한 면적
	
	public int getWrNumber() {
		return wrNumber;
	}
	public void setWrNumber(int wrNumber) {
		this.wrNumber = wrNumber;
	}
	public ActResult getActResult() {
		return actResult;
	}
	public void setActResult(ActResult actResult) {
		this.actResult = actResult;
	}
	public PpWork getPpWork() {
		return ppWork;
	}
	public void setPpWork(PpWork ppWork) {
		this.ppWork = ppWork;
	}
	public double getWrTotalarea() {
		return wrTotalarea;
	}
	public void setWrTotalarea(double wrTotalarea) {
		this.wrTotalarea = wrTotalarea;
	}
	public double getWrReworkarea() {
		return wrReworkarea;
	}
	public void setWrReworkarea(double wrReworkarea) {
		this.wrReworkarea = wrReworkarea;
	}
	@Override
	public String toString() {
		return "PpWoResult [wrNumber=" + wrNumber + ", actResult=" + actResult + ", ppWork=" + ppWork + ", wrTotalarea="
				+ wrTotalarea + ", wrReworkarea=" + wrReworkarea + "]";
	}	
}