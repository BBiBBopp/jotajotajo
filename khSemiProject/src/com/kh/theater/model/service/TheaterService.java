package com.kh.theater.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.theater.model.dao.TheaterDao;

public class TheaterService {

	public int selectListCount() {

		Connection conn = getConnection();
		
		int listCount = new TheaterDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}

}
