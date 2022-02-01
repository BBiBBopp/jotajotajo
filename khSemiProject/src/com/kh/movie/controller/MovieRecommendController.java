package com.kh.movie.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.movie.model.service.MovieService;
import com.kh.movie.model.vo.Movie;

/**
 * Servlet implementation class MovieRecommendController
 */
@WebServlet("/recommendList.mo")
public class MovieRecommendController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieRecommendController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		로그인 되어있는 경우, MEMBER테이블에서 선호영화 조회해오는 것도 필요함 -> Member를 받아와서 선호영화에 들어가기
//		로그인 안되어있는 경우 랜덤으로 1개 선택
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");//로그인 유저 조회
		

		String genres = new MovieService().selectMemberGenre(loginUser.getMemberId());
		String[] genre = genres.split(",");
		ArrayList<Movie> recommendList = new MovieService().selectRecommendList(count, genre);

//		request.setAttribute("recommendList", recommendList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
