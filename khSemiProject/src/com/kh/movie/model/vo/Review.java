package com.kh.movie.model.vo;

import java.sql.Date;

public class Review {
	private int reviewNo;
	private String reviewContent;
	private int reviewGrade;
	private Date createDate;
	private String status;
	private int mno;
	private String reviewWriter;
	private int payCheck;//결제 정보 확인
	public Review() {
		super();
	}
	
	
	public Review(int reviewNo, String reviewContent, int mno) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContent = reviewContent;
		this.mno = mno;
	}


	public Review(int reviewNo, String reviewContent, int reviewGrade, Date createDate, String status, int mno,
			String reviewWriter, int payCheck) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContent = reviewContent;
		this.reviewGrade = reviewGrade;
		this.createDate = createDate;
		this.status = status;
		this.mno = mno;
		this.reviewWriter = reviewWriter;
		this.payCheck = payCheck;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getReviewGrade() {
		return reviewGrade;
	}
	public void setReviewGrade(int reviewGrade) {
		this.reviewGrade = reviewGrade;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getReviewWriter() {
		return reviewWriter;
	}
	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}
	public int getPayCheck() {
		return payCheck;
	}
	public void setPayCheck(int payCheck) {
		this.payCheck = payCheck;
	}
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewContent=" + reviewContent + ", reviewGrade=" + reviewGrade
				+ ", createDate=" + createDate + ", status=" + status + ", mno=" + mno + ", reviewWriter="
				+ reviewWriter + ", payCheck=" + payCheck + "]";
	}
	
	
}