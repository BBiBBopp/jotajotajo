package com.kh.question.model.vo;

public class question {
	private int askNo; //ASK_NO	NUMBER
	private String askDate; //ASK_DATE	DATE
	private String askTitle; //ASK_TITLE	VARCHAR2(20 BYTE)
	private String askContent; //ASK_CONTENT	VARCHAR2(1000 BYTE)
	private String commentDate; //COMMENT_DATE	DATE
	private String comment; //COMMENT	VARCHAR2(1000 BYTE)
	private int memberNo; //MEMBER_NO --askWriter	NUMBER
	public question() {
		super();
	}
	public question(int askNo, String askDate, String askTitle, String askContent, String commentDate, String comment,
			int memberNo) {
		super();
		this.askNo = askNo;
		this.askDate = askDate;
		this.askTitle = askTitle;
		this.askContent = askContent;
		this.commentDate = commentDate;
		this.comment = comment;
		this.memberNo = memberNo;
	}
	public int getAskNo() {
		return askNo;
	}
	public void setAskNo(int askNo) {
		this.askNo = askNo;
	}
	public String getAskDate() {
		return askDate;
	}
	public void setAskDate(String askDate) {
		this.askDate = askDate;
	}
	public String getAskTitle() {
		return askTitle;
	}
	public void setAskTitle(String askTitle) {
		this.askTitle = askTitle;
	}
	public String getAskContent() {
		return askContent;
	}
	public void setAskContent(String askContent) {
		this.askContent = askContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	@Override
	public String toString() {
		return "question [askNo=" + askNo + ", askDate=" + askDate + ", askTitle=" + askTitle + ", askContent="
				+ askContent + ", commentDate=" + commentDate + ", comment=" + comment + ", memberNo=" + memberNo + "]";
	}
}
