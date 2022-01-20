package com.kh.question.model.service;

import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.question.model.dao.QuestionDao;

public class QuestionService {

	public void selectQuestionList() {
		Connection conn = getConnection();
		
		// new QuestionDao().selectQuestionList(conn);
		
	}

}
