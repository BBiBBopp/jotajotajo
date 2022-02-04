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
		int result2 = 0;
		int result3 = 0;
		
		// 상영관 split
		String[] auditoriumNameArr = ta.getAuditoriumName().split(",");
		String[] auditoriumSeatNumArr = ta.getAuditoriumSeatNum().split(",");
		
//		 상영관 스플릿으로 나누고 이프문안에 넣어서 좌석과 세트로 실행되게
		if(result > 0) {
			for(int i = 1; i <= auditoriumNameArr.length; i++){
				if(auditoriumNameArr[i-1].equals((i) + "관")) {
					if(auditoriumSeatNumArr[i-1].equals("100")) {
						result2 = new TheaterDao().insertAuditorium(conn, ta, auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
						if(result2 > 0) {
							result3 = new SeatDao().insertSeatOne(conn, ta.getAuditoriumNo());
						}
					} else if (auditoriumSeatNumArr[i-1].equals("120")) {
						result2 = new TheaterDao().insertAuditorium(conn, ta, auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
						if(result2 > 0) {
							result3 = new SeatDao().insertSeatTwo(conn, ta.getAuditoriumNo()+1);
						}
					} else if(auditoriumSeatNumArr[i-1].equals("160")) {
						result2 = new TheaterDao().insertAuditorium(conn, ta, auditoriumNameArr[i-1].toString(), auditoriumSeatNumArr[i-1].toString());
						if(result2 > 0) {
							result3 = new SeatDao().insertSeatSix(conn, ta.getAuditoriumNo()+2);
						}
					} else { // 상영관만 선택하고 좌석수를 선택하지 않았을 경우
						break;
					}
				}
			}
		}
		
		result = result * result2 * result3;
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
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

	/*
	public int deleteTheater(String[] deleteList) {

		Connection conn = getConnection();
		
		String theaterNoStr = null;
		String auditoriumNoStr = null;
		
		int result = 0;
		int result2 = 0;
		int result3 = 0;
		
		int auditoriumNo = 0;
		int theaterNo = 0;
		
		for(int i = 0; i < deleteList.length; i++) {
			if(i % 2 != 0) {
				auditoriumNoStr = deleteList[i];
				auditoriumNo = Integer.parseInt(auditoriumNoStr);
				result = new SeatDao().deleteSeat(conn, auditoriumNo);
			}else {
				theaterNoStr = deleteList[i];
				if(result > 0) {
					theaterNoStr = deleteList[i];
					theaterNo = Integer.parseInt(theaterNoStr);
					result2 = new TheaterDao().deleteAuditorium(conn, theaterNo);
				}
				if(result2 > 0) {
					result3 = new TheaterDao().deleteTheater(conn, theaterNo);
				}
			}
		}
		
		System.out.println("service의 result");
		System.out.println(result);
		System.out.println(result2);
		System.out.println(result3);
		
		if(result * result2 * result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return (result * result2 * result3);
	}
	
	*/

	public int deleteTheater(String[] deleteList) {

		Connection conn = getConnection();
		
		int theaterNo = 0;
		
		int result = 0;
		int result2 = 0;
		int result3 = 0;
		
		for(int i = 0; i < deleteList.length; i++) {
			
			String theaterNoStr = deleteList[i];
			theaterNo = Integer.parseInt(theaterNoStr);
			
			result = new SeatDao().deleteSeat(conn, theaterNo);
			
			if(result > 0) {
				result2 = new TheaterDao().deleteAuditorium(conn, theaterNo);
				if(result2 > 0) {
					result3 = new TheaterDao().deleteTheater(conn, theaterNo);
				}
			}
		}
		
		System.out.println("service1 : " + result);
		System.out.println("service2 : " + result2);
		System.out.println("service3 : " + result3);
		
		/*
		for(int i = 0; i < deleteList.length; i++) {
			if(i % 2 != 0) {
				auditoriumNoStr = deleteList[i];
				auditoriumNo = Integer.parseInt(auditoriumNoStr);
				result = new SeatDao().deleteSeat(conn, auditoriumNo);
			}else {
				theaterNoStr = deleteList[i];
				if(result > 0) {
					theaterNoStr = deleteList[i];
					theaterNo = Integer.parseInt(theaterNoStr);
					result2 = new TheaterDao().deleteAuditorium(conn, theaterNo);
				}
				if(result2 > 0) {
					result3 = new TheaterDao().deleteTheater(conn, theaterNo);
				}
			}
		}
		*/
		
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

	public int nextVal() {
		
		Connection conn = getConnection();
		
		int result = new TheaterDao().theaterNextVal(conn);
		
		int result2 = new TheaterDao().auditoriumNextVal(conn);
		
		close(conn);
		
		return (result * result2);
	}

	

	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
