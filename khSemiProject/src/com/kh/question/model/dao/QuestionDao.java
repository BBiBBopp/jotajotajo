package com.kh.question.model.dao;

import static com.kh.common.JDBCTemplate.*;

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

import com.kh.question.model.vo.Question;

public class QuestionDao {

	private Properties prop = new Properties();
	
	public QuestionDao() {
		String fileName = QuestionDao.class.getResource("/sql/question/question-mapper.xml").getPath();
	
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

	public ArrayList<Question> selectQuestionList(Connection conn, int memberNo) {
		ArrayList<Question> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectQ-list");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Question q = new Question(rset.getInt("ASK_NO"),
										  rset.getString("ASK_DATE"),
										  rset.getInt("ASK_TYPE"),
										  rset.getString("ASK_TITLE"),
										  rset.getString("COMMENT_DATE"),
										  rset.getInt("MEMBER_NO")
										 );
				list.add(q);		
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	public Question selectQuestionDetail(Connection conn, int questionNo) {
		Question q = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectQ");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, questionNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				q = new Question(rset.getString("ASK_DATE"),
						  		 rset.getInt("ASK_TYPE"),
						  		 rset.getString("ASK_TITLE"),
						  		 rset.getString("ASK_CONTENT"),
						  		 rset.getString("COMMENT_DATE"),
						  		 rset.getString("ASK_COMMENT"),
						  		 rset.getInt("MEMBER_NO")
						 );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return q;
	}
}
