package com.kh.ticket.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.movie.model.vo.Movie;
import com.kh.ticket.model.dao.TicketDao;

public class TicketService {

	public ArrayList<Movie> selectMovieName() {
		Connection conn = getConnection();
		
		ArrayList<Movie> mList = new TicketDao().selectMovieName(conn);
		
		close(conn);
		
		return mList;
	}

}
