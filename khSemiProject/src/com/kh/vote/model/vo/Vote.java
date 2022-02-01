package com.kh.vote.model.vo;

import java.sql.Date;

public class Vote {

	private int voteNo;//VOTE_NO	NUMBER
	private Date voteMonth;//VOTE_MONTH	DATE
	private int mNo;//MNO	NUMBER
	
	public Vote() {
		super();
	}

	public Vote(int voteNo, Date voteMonth, int mNo) {
		super();
		this.voteNo = voteNo;
		this.voteMonth = voteMonth;
		this.mNo = mNo;
	}

	public int getVoteNo() {
		return voteNo;
	}

	public void setVoteNo(int voteNo) {
		this.voteNo = voteNo;
	}

	public Date getVoteMonth() {
		return voteMonth;
	}

	public void setVoteMonth(Date voteMonth) {
		this.voteMonth = voteMonth;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	@Override
	public String toString() {
		return "Vote [voteNo=" + voteNo + ", voteMonth=" + voteMonth + ", mNo=" + mNo + "]";
	}
	
	
	
	
	
}
