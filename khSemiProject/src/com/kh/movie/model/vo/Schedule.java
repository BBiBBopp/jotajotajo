package com.kh.movie.model.vo;

public class Schedule {
	private int runNo;
	private String runSch;
	private int auditoriumNo;
	private int mno;
	public Schedule() {
		super();
	}
	public Schedule(int runNo, String runSch, int auditoriumNo, int mno) {
		super();
		this.runNo = runNo;
		this.runSch = runSch;
		this.auditoriumNo = auditoriumNo;
		this.mno = mno;
	}
	public int getRunNo() {
		return runNo;
	}
	public void setRunNo(int runNo) {
		this.runNo = runNo;
	}
	public String getRunSch() {
		return runSch;
	}
	public void setRunSch(String runSch) {
		this.runSch = runSch;
	}
	public int getAuditoriumNo() {
		return auditoriumNo;
	}
	public void setAuditoriumNo(int auditoriumNo) {
		this.auditoriumNo = auditoriumNo;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	@Override
	public String toString() {
		return "Schedule [runNo=" + runNo + ", runSch=" + runSch + ", auditoriumNo=" + auditoriumNo + ", mno=" + mno
				+ "]";
	}
	
	
}
