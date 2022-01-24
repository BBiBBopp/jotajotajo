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

	public ArrayList<Movie> selectMovie(Connection conn) {
		ArrayList<Movie> mList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMovie");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Movie m = new Movie(rset.getInt("MNO"),
									rset.getString("MNAME"),
									rset.getString("GENRE"),
									rset.getInt("RTIME"),
									rset.getString("RATE"),
									rset.getString("STATUS"),
									rset.getDate("RUN_SCH"));
				
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

}
