package com.kh.theater.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.theater.model.dao.TheaterDao;
import com.kh.theater.model.vo.Theater;

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

}
