package com.kh.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeInsertController
 */
@WebServlet("/insert.no")
public class NoticeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String tableType = request.getParameter("tableType");
		String noticeCategory = request.getParameter("category");
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("ir1");
	
		Notice n = new Notice();
		n.setNoticeCategory(noticeCategory);
		n.setNoticeTitle(noticeTitle);
		n.setNoticeContent(noticeContent);
		
		int result = new NoticeService().insertNotice(n);
		
		if(result>0) {
			request.getSession().setAttribute("alertMsg", "공지사항 등록 성공");
			response.sendRedirect(request.getContextPath()+"/adminList.no?currentPage=1&tableType="+tableType);
		}else {
			request.getSession().setAttribute("alertMsg", "공지사항 등록 성공");
			request.getRequestDispatcher("views/user/common/errorPage.jsp").forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
