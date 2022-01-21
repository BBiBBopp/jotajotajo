package com.kh.question.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.question.model.service.QuestionService;
import com.kh.question.model.vo.Question;

/**
 * Servlet implementation class QuestionListController
 */
@WebServlet("/list.qu")
public class QuestionListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 값 뽑기
		// int memberNo = Integer.parseInt(request.getParameter("memberNo"));
		int memberNo = 1;
		// service에 요청
		ArrayList<Question> list = new QuestionService().selectQuestionList(memberNo);
		// 값 넘기기
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/user/question/questionListView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
