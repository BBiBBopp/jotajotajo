package com.kh.theater.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.theater.model.dao.TheaterDao;
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

	public TheaterAuditorium aSelectTheater(int theaterNo) {

		Connection conn = getConnection();
		
		TheaterAuditorium ta = new TheaterDao().aSelectTheater(conn, theaterNo);
		
		close(conn);
		
		return ta;
	}

	public int insertTheater(TheaterAuditorium ta) {

		Connection conn = getConnection();
		
		int result = new TheaterDao().insertTheater(conn, ta);
		
		int result2 = new TheaterDao().insertAuditorium(conn, ta);
		
		if(result * result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return (result * result2);
	}

	public int updateTheater(TheaterAuditorium ta) {

		Connection conn = getConnection();
		
		int result = new TheaterDao().updateTheater(conn, ta);
		int result2 = new TheaterDao().updateAuditorium(conn, ta);
		
		if(result * result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int deleteTheater(int theaterNo) {

		Connection conn = getConnection();
		
		int result = new TheaterDao().deleteTheater(conn, theaterNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

}
