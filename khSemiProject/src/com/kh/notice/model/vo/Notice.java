package com.kh.notice.model.vo;

import java.sql.Date;

public class Notice {
	private int noticeNo;
	private String noticeCategory;
	//notice : 중요 10, 일반 20
	//FAQ : 예매 100, 영화관 이용 200, 회원 300, 홈페이지 이용 400, 멤버십 500, 투표 600, 기타 700
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	private String status;
	

	public Notice() {
		super();
	}
	public Notice(int noticeNo, String noticeCategory, String noticeTitle, String noticeContent, Date noticeDate,
			String status) {
		super();
		this.noticeNo = noticeNo;
		this.noticeCategory = noticeCategory;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeDate = noticeDate;
		this.status = status;
	}


	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeCategory() {
		return noticeCategory;
	}
	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	@Override
	public String toString() {
		return "NoticeDao [noticeNo=" + noticeNo + ", noticeCategory=" + noticeCategory + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeDate=" + noticeDate + ", status=" + status + "]";
	}
	
	
}
