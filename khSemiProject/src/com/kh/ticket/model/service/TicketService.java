package com.kh.ticket.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.movie.model.vo.Movie;
import com.kh.theater.model.vo.Theater;
import com.kh.ticket.model.dao.TicketDao;
import com.kh.ticket.model.vo.Ticket;

public class TicketService {

	public ArrayList<Movie> selectMovieName() {
		Connection conn = getConnection();
		
		ArrayList<Movie> mList = new TicketDao().selectMovieName(conn);
		
		close(conn);
		
		return mList;
	}

	public ArrayList<Theater> selectTheaterAll() {
		Connection conn = getConnection();
		
		ArrayList<Theater> tlist = new TicketDao().selectTheaterAll(conn);
		
		close(conn);
		
		return tlist;
	}

	public ArrayList<Theater> selectLocation(String mName) {
		Connection conn = getConnection();
		
		ArrayList<Theater> tlist = new TicketDao().selectLocation(conn, mName);
		
		close(conn);
		
		return tlist;
	}

	public ArrayList<String> selectTheater(String tAddr, String mName) {
		Connection conn = getConnection();
		
		ArrayList<String> list = new TicketDao().selectTheater(conn, tAddr, mName);
		
		close(conn);
		return list;
	}

	public ArrayList<Ticket> selectTicketList(int memberNo) {
		Connection conn = getConnection();
		
		ArrayList<Ticket> rlist = new TicketDao().selectTicketList(conn, memberNo);
		
		close(conn);
		return rlist;
	}

}
