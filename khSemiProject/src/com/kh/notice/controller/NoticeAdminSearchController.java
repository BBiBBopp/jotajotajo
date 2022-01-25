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
 * Servlet implementation class NoticeSearchController
 */
@WebServlet("/search.no")
public class NoticeAdminSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NoticeAdminSearchController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");
		String keyword = request.getParameter("keyword");

		int listCount;
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));

		int pageLimit = 10;
		int boardLimit = 5;

		int maxPage;
		int startPage;
		int endPage;

		int startRow;
		int endRow;

		listCount = new NoticeService().countKeywordAdminNotice(type, "%" + keyword + "%");

		maxPage = (int) Math.ceil((double) listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;

		endPage = startPage + pageLimit - 1;
		if (endPage > maxPage)
			endPage = maxPage;

		startRow = (currentPage - 1) * boardLimit + 1;
		endRow = startRow + boardLimit - 1;

		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Notice> list = new NoticeService().searchNoticeAdminList(type, "%" + keyword + "%", startRow, endRow);

		request.setAttribute("type", type);
		request.setAttribute("keyword", keyword);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/notice/noticeListView.jsp").forward(request, response);
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
