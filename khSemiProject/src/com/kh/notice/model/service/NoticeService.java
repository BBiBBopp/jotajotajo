package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Notice;

public class NoticeService {

	public int countNotice(int startCate, int endCate) {
		Connection conn = getConnection();

		int count = new NoticeDao().countNotice(conn, startCate, endCate);

		close(conn);

		return count;
	}

	public ArrayList<Notice> selectNoticeList(int startRow, int endRow) {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn, startRow, endRow);

		close(conn);
		
		return list;
	}

	public int countKeywordNotice(String type2, String keyword) {
		Connection conn = getConnection();
		
		int count = new NoticeDao().countKeywordNotice(conn, type2, keyword);
		
		close(conn);
		
		return count;
	}
	
	public ArrayList<Notice> searchNoticeList(String type, String keyword, int startRow, int endRow) {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().searchNoticeList(conn, type, keyword, startRow, endRow);
		
		close(conn);
		
		return list;
	}

	public int increaseNoticeViews(int noticeNo) {
		Connection conn = getConnection();
		
		int views = new NoticeDao().increaseNoticeViews(conn, noticeNo);
		
		if(views>0) 
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return views;
	}

	public Notice selectNotice(int noticeNo) {
		Connection conn = getConnection();
		
		Notice n = new NoticeDao().selectNotice(conn, noticeNo);
		
		close(conn);
		
		return n;
	}

	public ArrayList<Notice> selectFAQList(int category, int startRow, int endRow) {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().searchFAQList(conn, category, startRow, endRow);
		
		close(conn);
		
		return list;
	}

	public Notice MainNotice(String noticeMain) {
		
		Connection conn = getConnection();
		
		Notice mainList = new NoticeDao().MainNotice(conn, noticeMain);
		
		close(conn);
		
		return mainList;
		
		
		
		
		
	}

	



}
