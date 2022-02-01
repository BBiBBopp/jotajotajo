package com.kh.theater.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.theater.model.dao.SeatDao;
import com.kh.theater.model.dao.TheaterDao;
import com.kh.theater.model.vo.Auditorium;
import com.kh.theater.model.vo.Theater;
import com.kh.theater.model.vo.TheaterAuditorium;

public class TheaterService {

	public int selectListCount() {

		Connection conn = getConnection();
		
		int listCount = new TheaterDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Theater> selectList(PageInfo pi) {

		Connection conn = getConnection();
		
		ArrayList<Theater> list = new TheaterDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
	}

	public Theater selectTheater(int theaterNo) {

		Connection conn = getConnection();
		
		Theater t = new TheaterDao().selectTheater(conn, theaterNo);
		
		close(conn);
		
		return t;
	}

	public ArrayList<Theater> aSelectList(PageInfo pi) {

		Connection conn = getConnection();
		
		ArrayList<Theater> list = new TheaterDao().aSelectList(conn, pi);
		
		close(conn);
		
		return list;
	}

	
	public ArrayList<TheaterAuditorium> aSelectTheater(int theaterNo) {

		Connection conn = getConnection();
		
		ArrayList<TheaterAuditorium> list = new TheaterDao().aSelectTheater(conn, theaterNo);
		
		close(conn);
		
		return list;
	}

	public int insertTheater(TheaterAuditorium ta) {

		Connection conn = getConnection();
		
		int result = new TheaterDao().insertTheater(conn, ta);
		
		// 상영관 스플릿으로 나누고 이프문안에 넣어서 좌석과 세트로 실행되게
		int result2 = 1;
		int result3 = 1;
		
		String[] auditoriumNameArr = ta.getAuditoriumName().split(",");
		String[] auditoriumSeatNumArr = ta.getAuditoriumSeatNum().split(",");
		
		for(int i = 1; i <= auditoriumNameArr.length; i++){
			if(auditoriumNameArr[i-1].equals((i) + "관")) {
				if(auditoriumSeatNumArr[i-1].equals("100")) {
					result2 = new TheaterDao().insertAuditorium(conn,auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
					result3 = new SeatDao().insertSeatOne(conn, ta);
					
				} else if (auditoriumSeatNumArr[i-1].equals("120")) {
					result2 = new TheaterDao().insertAuditorium(conn,auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
					result3 = new SeatDao().insertSeatTwo(conn, ta);
					
				} else if(auditoriumSeatNumArr[i-1].equals("160")) {
					result2 = new TheaterDao().insertAuditorium(conn,auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
					result3 = new SeatDao().insertSeatSix(conn, ta);
				} 
				else { // 상영관만 선택하고 좌석수를 선택하지 않았을 경우
					break;
				}
			}
		}
		
		if(result * result2 * result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return (result * result2 * result3);
		
	}

	public int updateTheater(TheaterAuditorium ta) {
		
		Connection conn = getConnection();
		
		int result = new TheaterDao().updateTheater(conn, ta);
		int result2 = 1;
		int result3 = 1;
		
		String[] auditoriumNameArr = ta.getAuditoriumName().split(",");
		String[] auditoriumSeatNumArr = ta.getAuditoriumSeatNum().split(",");
		
		for(int i = 1; i <= auditoriumNameArr.length; i++){
			if(auditoriumNameArr[i-1].equals((i) + "관")) {
				if(auditoriumSeatNumArr[i-1].equals("100")) {
					result2 = new TheaterDao().updateAuditorium(conn, ta, auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
					result3 = new SeatDao().updateSeatOne(conn, ta);
					
				} else if (auditoriumSeatNumArr[i-1].equals("120")) {
					result2 = new TheaterDao().updateAuditorium(conn, ta, auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
					result3 = new SeatDao().updateSeatTwo(conn, ta);
					
				} else if(auditoriumSeatNumArr[i-1].equals("160")) {
					result2 = new TheaterDao().updateAuditorium(conn, ta, auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
					result3 = new SeatDao().updateSeatSix(conn, ta);
				} 
				else { // 상영관만 선택하고 좌석수를 선택하지 않았을 경우
					break;
				}
			}
		}
		
		if(result * result2 * result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return (result * result2 * result3);
	}

	public int deleteTheater(int theaterNo, int auditoriumNo) {

		Connection conn = getConnection();
		
		int result = new TheaterDao().deleteTheater(conn, theaterNo);
		
		int result2 = new TheaterDao().deleteAuditorium(conn, theaterNo);
		
		int result3 = new SeatDao().deleteSeat(conn, auditoriumNo);
		
		System.out.println("result3 : " + result3);
		
		if(result * result2 * result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return (result * result2 * result3);
	}

	public ArrayList<Auditorium> aSelectAuditorium(PageInfo pi) {

		Connection conn = getConnection();
		
		ArrayList<Auditorium> list = new TheaterDao().aSelectAuditorium(conn, pi);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Auditorium> selectAuditorium(int theaterNo) {

		Connection conn = getConnection();
		
		ArrayList<Auditorium> auList = new TheaterDao().selectAuditorium(conn, theaterNo);
		
		close(conn);
		
		return auList;
	}

	public int deleteAuditorium(int theaterNo) {
		
		Connection conn = getConnection();
		
		int result = new TheaterDao().deleteAuditorium(conn, theaterNo);
		
		System.out.println("service : " + result);
		
		close(conn);
		
		return result;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
