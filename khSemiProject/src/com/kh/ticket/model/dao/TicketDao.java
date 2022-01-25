package com.kh.ticket.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import com.kh.movie.model.vo.Movie;
import com.kh.theater.model.vo.Theater;

import static com.kh.common.JDBCTemplate.*;

public class TicketDao {
	
	private Properties prop = new Properties();
	
	public TicketDao() {
		String fileName = TicketDao.class.getResource("/sql/ticket/ticket-mapper.xml").getPath();
	
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (InvalidPropertiesFormatException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Movie> selectMovieName(Connection conn) {
		ArrayList<Movie> mList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMovieName");
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();

			while(rset.next()) {
				Movie m = new Movie();
				m.setMovieNo(rset.getInt("MNO"));
				m.setMovieName(rset.getString("MNAME"));
				m.setRate(rset.getString("RATE"));

				mList.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return mList;
	}

	public ArrayList<Theater> selectTheaterAll(Connection conn) {
		ArrayList<Theater> tlist = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTheaterAll");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Theater t = new Theater();
				t.setAddress(rset.getString("LOCATION"));
				t.setTheaterNum(rset.getInt("COUNT"));
				
				tlist.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return tlist;
	}

	public ArrayList<Theater> selectLocation(Connection conn, String mName) {
		ArrayList<Theater> tlist = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectLocation");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mName);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Theater t = new Theater();
				t.setTheaterName(rset.getString("LOCATION"));
				t.setTheaterNum(rset.getInt("COUNT"));
				
				tlist.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return tlist;
	}

	public ArrayList<String> selectTheater(Connection conn, String tAddr, String mName) {
		ArrayList<String> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTheater");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mName);
			pstmt.setString(2, tAddr + "%");
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				String place = rset.getString("THEATER_NAME");
				
				list.add(place);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}
