package com.kh.question.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.question.model.dao.QuestionDao;
import com.kh.question.model.vo.Question;

public class QuestionService {

	public ArrayList<Question> selectQuestionList(int memberNo) {
		Connection conn = getConnection();

		ArrayList<Question> list = new QuestionDao().selectQuestionList(conn, memberNo);
		
		close(conn);
		
		return list;
	}

}
