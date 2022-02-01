package com.kh.ticket.model.vo;

public class Ticket {
	private int ticketNo; //TICKET_NO	NUMBER
	private int payNo; //PAY_NO	NUMBER
	private String ticketType; //TICKET_TYPE	VARCHAR2(20 BYTE)
	private int seatPk; //SEAT_PK	NUMBER
	private int runNo; //RUN_NO	NUMBER
	private String payStatus; //PAY_STATUS	VARCHAR2(10 BYTE)
	private String payDate; //PAY_DATE	DATE
	private String payment; //PAYMENT	VARCHAR2(20 BYTE)
	private int memberNo; //MEMBER_NO	NUMBER
	private int ticketNum; //TICKET_NUM	NUMBER
	private int mNo; //MNO	NUMBER --영화 번호
	private String mName; //MNAME	VARCHAR2(255)
	private String rTime; //RTIME	NUMBER
	private String rate; // RATE	VARCHAR2(255)
	private int auditoriumNo; //AUDITORIUM_NO	NUMBER
	private String auditoriumName; //AUDITORIUM_NAME	VARCHAR2(20)
	private String seatAll; // A_SEAT	NUMBER -- 해당 영화관의 총 좌석 수
	private int theaterNo; //THEATER_NO	NUMBER
	private int address; //ADDRESS	VARCHAR2(1000)
	private String theaterName; //THEATER_NAME	VARCHAR2(500)
	private String runSchedule; //RUN_SCH	DATE
	public Ticket() {
		super();
	}
	public Ticket(int ticketNo, int payNo, String ticketType, int seatPk, int runNo, String payStatus, String payDate,
			String payment, int memberNo, int ticketNum, int mNo, String mName, String rTime, String rate,
			int auditoriumNo, String auditoriumName, String seatAll, int theaterNo, int address, String theaterName,
			String runSchedule) {
		super();
		this.ticketNo = ticketNo;
		this.payNo = payNo;
		this.ticketType = ticketType;
		this.seatPk = seatPk;
		this.runNo = runNo;
		this.payStatus = payStatus;
		this.payDate = payDate;
		this.payment = payment;
		this.memberNo = memberNo;
		this.ticketNum = ticketNum;
		this.mNo = mNo;
		this.mName = mName;
		this.rTime = rTime;
		this.rate = rate;
		this.auditoriumNo = auditoriumNo;
		this.auditoriumName = auditoriumName;
		this.seatAll = seatAll;
		this.theaterNo = theaterNo;
		this.address = address;
		this.theaterName = theaterName;
		this.runSchedule = runSchedule;
	}
	public int getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}
	public int getPayNo() {
		return payNo;
	}
	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}
	public String getTicketType() {
		return ticketType;
	}
	public void setTicketType(String ticketType) {
		this.ticketType = ticketType;
	}
	public int getSeatPk() {
		return seatPk;
	}
	public void setSeatPk(int seatPk) {
		this.seatPk = seatPk;
	}
	public int getRunNo() {
		return runNo;
	}
	public void setRunNo(int runNo) {
		this.runNo = runNo;
	}
	public String getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getTicketNum() {
		return ticketNum;
	}
	public void setTicketNum(int ticketNum) {
		this.ticketNum = ticketNum;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getrTime() {
		return rTime;
	}
	public void setrTime(String rTime) {
		this.rTime = rTime;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public int getAuditoriumNo() {
		return auditoriumNo;
	}
	public void setAuditoriumNo(int auditoriumNo) {
		this.auditoriumNo = auditoriumNo;
	}
	public String getAuditoriumName() {
		return auditoriumName;
	}
	public void setAuditoriumName(String auditoriumName) {
		this.auditoriumName = auditoriumName;
	}
	public String getSeatAll() {
		return seatAll;
	}
	public void setSeatAll(String seatAll) {
		this.seatAll = seatAll;
	}
	public int getTheaterNo() {
		return theaterNo;
	}
	public void setTheaterNo(int theaterNo) {
		this.theaterNo = theaterNo;
	}
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	public String getRunSchedule() {
		return runSchedule;
	}
	public void setRunSchedule(String runSchedule) {
		this.runSchedule = runSchedule;
	}
	@Override
	public String toString() {
		return "Ticket [ticketNo=" + ticketNo + ", payNo=" + payNo + ", ticketType=" + ticketType + ", seatPk=" + seatPk
				+ ", runNo=" + runNo + ", payStatus=" + payStatus + ", payDate=" + payDate + ", payment=" + payment
				+ ", memberNo=" + memberNo + ", ticketNum=" + ticketNum + ", mNo=" + mNo + ", mName=" + mName
				+ ", rTime=" + rTime + ", rate=" + rate + ", auditoriumNo=" + auditoriumNo + ", auditoriumName="
				+ auditoriumName + ", seatAll=" + seatAll + ", theaterNo=" + theaterNo + ", address=" + address
				+ ", theaterName=" + theaterName + ", runSchedule=" + runSchedule + "]";
	}
	
}
