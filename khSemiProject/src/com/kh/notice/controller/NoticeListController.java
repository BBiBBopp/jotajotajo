package com.kh.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;
import com.kh.notice.model.vo.PageInfo;

/**
 * Servlet implementation class NoticeListController
 */
@WebServlet("/list.no")
public class NoticeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NoticeListController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		get

		// 페이징 처리
		// !!!변수 7개!!!
		// 총 게시글의 수
		int listCount;
		// 사용자가 요청한 페이지(현재 페이지)
		int currentPage;
		// 페이징 버튼의 수
		int pageLimit;
		// 한 페이지에 노출되는 글 수
		int boardLimit;
		// 페이징 버튼의 가장 마지막 버튼
		int maxPage;
		// 페이징 버튼의 시작
		int startPage;
		// 페이징 버튼의 끝
		int endPage;

//		공지사항만 조회-> 전체 공지사항 게시글 수
		int startCate = 10;// 공지사항 카테고리 시작
		int endCate = 20;// 공지사항 카테고리 끝
		listCount = new NoticeService().countNotice(startCate, endCate);

		currentPage = Integer.parseInt(request.getParameter("currentPage"));

		pageLimit = 10;

		boardLimit = 5;// 일반 공지 수. 중요 공지는 전부!! 항상 상단 정렬

		maxPage = (int) Math.ceil((double) listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;

		endPage = startPage + pageLimit - 1;
		if (endPage > maxPage)
			endPage = maxPage;

		// 노출될 공지사항 첫번재 행
		int startRow = (currentPage - 1) * boardLimit + 1;
		// 노출될 공지사항 마지막 행
		int endRow = startRow + boardLimit - 1;

//		vo 가공
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);

		ArrayList<Notice> list = new NoticeService().selectNoticeList(startRow, endRow);

		request.setAttribute("pi", pi);
		request.setAttribute("list", list);

		request.getRequestDispatcher("views/user/notice/noticeListView.jsp").forward(request, response);

		System.out.println(pi + ":" + list);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
