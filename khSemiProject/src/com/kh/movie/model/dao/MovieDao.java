package com.kh.movie.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.movie.model.vo.Movie;
import com.kh.movie.model.vo.Picture;

import static com.kh.common.JDBCTemplate.*;

public class MovieDao {

	
	
	private Properties prop = new Properties();
			
	public MovieDao() {
		String fileName = MovieDao.class.getResource("/sql/user/movie/movie-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<Movie> selectCurrentList(Connection conn, int sCount, int eCount) {
		ArrayList<Movie> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCurrentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sCount);
			pstmt.setInt(2, eCount);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Movie mv = new Movie();
				mv.setMovieNo(rset.getInt("MNO"));
				mv.setMovieName(rset.getString("MNAME"));
				mv.setGenre(rset.getString("GENRE"));
				mv.setGrade(rset.getString("RATE"));
//				mv.setAdvanceRate(rset.getDouble("예매율"));
				
				list.add(mv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}


	public Movie selectMovie(Connection conn, int movieNo) {
		Movie mv = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMovie");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				mv = new Movie(rset.getInt(1)
							,rset.getString(2)
							,rset.getString(3)
							,rset.getString(4)
							,rset.getString(5)
							,rset.getInt(6)
							,rset.getString(7)
							,rset.getString(8)
							,rset.getString(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return mv;
	}


	public ArrayList<Picture> selectPicture(Connection conn, int movieNo) {
		ArrayList<Picture> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPicture");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieNo);
			rset = pstmt.executeQuery();
			
			while(rset.next())
				list.add(new Picture(rset.getInt(1)
									,rset.getInt(2)
									,rset.getInt(3)
									,rset.getString(4)
									,rset.getString(5)
									,rset.getString(6)
									,rset.getDate(7)
									,rset.getString(8)));
//				column number로 붙여놓음 문제있으면 수정할것
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}


	public ArrayList<Picture> selectPosterList(Connection conn, ArrayList<Integer> movieNoList) {
		ArrayList<Picture> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPosterList");
		
		try {
			for(int i : movieNoList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i);
				rset = pstmt.executeQuery();
				
				if(rset.next()) 
					list.add(new Picture(rset.getInt(1)
							,rset.getInt(2)
							,rset.getInt(3)
							,rset.getString(4)
							,rset.getString(5)
							,rset.getString(6)
							,rset.getDate(7)
							,rset.getString(8)));
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
