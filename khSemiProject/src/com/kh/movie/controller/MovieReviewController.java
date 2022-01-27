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
import com.kh.movie.model.vo.Picture;
import com.kh.movie.model.vo.Review;

/**
 * Servlet implementation class MovieReviewController
 */
@WebServlet("/review.mo")
public class MovieReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int movieNo = Integer.parseInt(request.getParameter("mno"));
		
		int memberNo = 0;
		Member mem = null;
		if((Member)request.getSession().getAttribute("loginUser") != null)
			memberNo = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		
		int sCount = 1;
		int eCount = 10;
		
		
		
		Movie mvSummary= new MovieService().selectMovieSummary(movieNo, memberNo);
		
		ArrayList<Picture> picList = new MovieService().selectPicture(movieNo);
		
//		ArrayList<Review> reviewList = new MovieService().selectReviewList(movieNo, memberNo, sCount, eCount);

//		System.out.println(mvSummary);
		request.setAttribute("mv", mvSummary);
		request.setAttribute("picList", picList);
//		request.setAttribute("reviewList", reviewList);
		
		request.getRequestDispatcher("views/user/movie/movieReviewView.jsp").forward(request, response);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
