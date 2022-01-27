package com.kh.notice.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.notice.model.vo.Notice;

import static com.kh.common.JDBCTemplate.*;


public class NoticeDao {
	private Properties prop = new Properties();

	public NoticeDao() {
		String fileName = NoticeDao.class.getResource("/sql/notice/notice-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int countNotice(Connection conn, int startCate, int endCate) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startCate);
			pstmt.setInt(2, endCate);
			rset = pstmt.executeQuery();
			
			if(rset.next())
				count = rset.getInt("COUNT");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
	}

	public ArrayList<Notice> selectNoticeList(Connection conn, int startRow, int endRow) {
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNoticeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			//시작~끝 정하기
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("NOTICE_NO"));
				n.setNoticeCategory(rset.getString("NOTICE_CATEGORY"));
				n.setNoticeTitle(rset.getString("NOTICE_TITLE"));
				n.setNoticeDate(rset.getDate("NOTICE_DATE"));
				
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int countKeywordNotice(Connection conn, String type2, String keyword) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(type2.equals("title"))
			sql = prop.getProperty("countTitleKeyword");
		else
			sql = prop.getProperty("countContentKeyword");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			rset = pstmt.executeQuery();
			
			if(rset.next())
				count = rset.getInt("COUNT");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
	}

	public ArrayList<Notice> searchNoticeList(Connection conn, String type, String keyword, int startRow, int endRow) {
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(type.equals("title"))
			sql = prop.getProperty("searchTitleList");
		else
			sql = prop.getProperty("searchContentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("NOTICE_NO"));
				n.setNoticeCategory(rset.getString("NOTICE_CATEGORY"));
				n.setNoticeTitle(rset.getString("NOTICE_TITLE"));
				n.setNoticeDate(rset.getDate("NOTICE_DATE"));
				
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int increaseNoticeViews(Connection conn, int noticeNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseNoticeViews");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Notice selectNotice(Connection conn, int noticeNo) {
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice();
				n.setNoticeNo(rset.getInt("NOTICE_NO"));
				n.setNoticeCategory(rset.getString("CATEGORY_CONTENT"));
				n.setNoticeTitle(rset.getString("NOTICE_TITLE"));
				n.setNoticeContent(rset.getString("NOTICE_CONTENT"));
				n.setNoticeViews(rset.getInt("VIEWS"));
				n.setNoticeDate(rset.getDate("NOTICE_DATE"));
				n.setNextNoticeNo(rset.getInt("NEXT_NO"));
				n.setNextNoticeTitle(rset.getString("NEXT_TITLE"));
				n.setPrevNoticeNo(rset.getInt("PREV_NO"));
				n.setPrevNoticeTitle(rset.getString("PREV_TITLE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return n;
	}

	public ArrayList<Notice> searchFAQList(Connection conn, int category, int startRow, int endRow) {
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFAQList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, category);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("NOTICE_NO"));
				n.setNoticeCategory(rset.getString("NOTICE_CATEGORY"));
				n.setNoticeTitle(rset.getString("NOTICE_TITLE"));
				n.setNoticeContent(rset.getString("NOTICE_CONTENT"));
				
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public Notice MainNotice(Connection conn, String noticeMain) {
		Notice mainList = new Notice();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("MainNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				mainList = new Notice(rset.getInt("NOTICE_NO"),
									  rset.getString("NOTICE_TITLE"));
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return mainList;
	}

	
	

	
	
}
