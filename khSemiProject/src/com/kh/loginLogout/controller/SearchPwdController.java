package com.kh.loginLogout.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.loginLogout.model.service.LoginService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class SearchPwdController
 */
@WebServlet("/spwd.sch")
public class SearchPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String memberId = request.getParameter("memberId");
		
		Member searchMem = new LoginService().searchPwd(memberId);
		
		if(searchMem != null) {
			
			request.setAttribute("searchMem", searchMem);
			
			request.getRequestDispatcher("views/user/loginLogout/searchPwd_tryCertify.jsp").forward(request, response);
			// 성공하면 성공페이지로 잘 감
			
		} else {
			
			request.getRequestDispatcher("views/user/loginLogout/searchPwd_notFoundIdForm.jsp").forward(request, response);
			// 실패하면 실패페이지로 잘 감
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
