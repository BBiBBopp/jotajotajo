package com.kh.theater.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.theater.model.vo.Theater;
import com.kh.theater.model.vo.TheaterAuditorium;
import com.kh.vote.model.vo.Vote;

public class TheaterDao {
	
	private Properties prop = new Properties();
	
	
	public TheaterDao() {
		
		String fileName = TheaterDao.class.getResource("/sql/theater/theater-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public int selectListCount(Connection conn) {

		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT"); // 13
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	

	public ArrayList<Theater> selectList(Connection conn, PageInfo pi) {
		
		ArrayList<Theater> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Theater(rset.getInt("THEATER_NO"),
								   rset.getString("THEATER_NAME"),
								   rset.getInt("AUDITORIUM_NUM"),
								   rset.getInt("SEAT_NUM"),
								   rset.getString("ADDRESS"),
								   rset.getString("PHONE"),
								   rset.getString("TRAFFIC"),
								   rset.getString("LOCATION"),
								   rset.getString("PARKING"),
								   rset.getInt("THEATER_IMG"),
								   rset.getString("UPLOAD_DATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}


	public Theater selectTheater(Connection conn, int theaterNo) {
		
		Theater t = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTheater");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, theaterNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				t = new Theater(rset.getInt("THEATER_NO"),
						   rset.getString("THEATER_NAME"),
						   rset.getInt("AUDITORIUM_NUM"),
						   rset.getInt("SEAT_NUM"),
						   rset.getString("ADDRESS"),
						   rset.getString("PHONE"),
						   rset.getString("TRAFFIC"),
						   rset.getString("LOCATION"),
						   rset.getString("PARKING"),
						   rset.getInt("THEATER_IMG"),
						   rset.getString("UPLOAD_DATE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return t;
	}


	public TheaterAuditorium aSelectTheater(Connection conn, int theaterNo) {

		TheaterAuditorium ta = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("aSelectTheater");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, theaterNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ta = new TheaterAuditorium(rset.getInt("THEATER_NO"),
						   				   rset.getString("THEATER_NAME"),
						   				   rset.getInt("AUDITORIUM_NUM"),
						   				   rset.getInt("SEAT_NUM"),
						   				   rset.getString("ADDRESS"),
						   				   rset.getString("PHONE"),
						   				   rset.getString("TRAFFIC"),
						   				   rset.getString("LOCATION"),
						   				   rset.getString("PARKING"),
						   				   rset.getInt("THEATER_IMG"),
						   				   rset.getString("UPLOAD_DATE"),
						   				   rset.getInt("AUDITORIUM_NO"),
						   				   rset.getString("AUDITORIUM_NAME"),
						   				   rset.getInt("AUDITORIUMSEATNUM"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return ta;
	}


	public int insertTheater(Connection conn, TheaterAuditorium ta) {

		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertTheater");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ta.getTheaterName());
			pstmt.setInt(2, ta.getAuditoriumNum());
			pstmt.setInt(3, ta.getSeatNum());
			pstmt.setString(4, ta.getAddress());
			pstmt.setString(5, ta.getPhone());
			pstmt.setString(6, ta.getTraffic());
			pstmt.setString(7, ta.getLocation());
			pstmt.setString(8, ta.getParking());
			pstmt.setInt(9, ta.getTheaterImg());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int insertAuditorium(Connection conn, TheaterAuditorium ta) {

		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertAuditorium");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ta.getAuditoriumName());
			pstmt.setInt(2, ta.getAuditoriumSeatNum());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int updateTheater(Connection conn, TheaterAuditorium ta) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateTheater");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ta.getTheaterName());
			pstmt.setInt(2, ta.getAuditoriumNum());
			pstmt.setInt(3, ta.getSeatNum());
			pstmt.setString(4, ta.getAddress());
			pstmt.setString(5, ta.getPhone());
			pstmt.setString(6, ta.getTraffic());
			pstmt.setString(7, ta.getLocation());
			pstmt.setInt(8, ta.getTheaterImg());
			pstmt.setInt(9, ta.getTheaterNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}


	public int updateAuditorium(Connection conn, TheaterAuditorium ta) {

		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateAuditorium");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ta.getAuditoriumName());
			pstmt.setInt(2, ta.getAuditoriumSeatNum());
			pstmt.setInt(3, ta.getTheaterNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteTheater(Connection conn, int theaterNo) {

		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteTheater");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, theaterNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
