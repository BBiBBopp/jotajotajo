package com.kh.movie.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.movie.model.service.MovieService;
import com.kh.movie.model.vo.Movie;
import com.kh.movie.model.vo.Picture;

/**
 * Servlet implementation class MovieListController
 */
@WebServlet("/currentList.mo")
public class MovieCurrentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieCurrentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		get방식 사용
//		보여질 기본 영화 수 hidden으로 받아오기
		int sCount = 1;
		int eCount = 3;//나중에 10
//		int sCount = Integer.parseInt(request.getParameter("startCount"));
//		int eCount = Integer.parseInt(request.getParameter("endCount"));

		ArrayList<Movie> currentList = new MovieService().selectCurrentList(sCount, eCount);
		
		//해당하는 영화 번호 추출
		ArrayList<Integer> movieNoList = new ArrayList<>();
		for(Movie mv : currentList)
			movieNoList.add(mv.getMovieNo());
		
		//추출된 번호로 포스터 조회해오기
		ArrayList<Picture> picList = new MovieService().selectPosterList(movieNoList);
				
		
		request.setAttribute("currentList", currentList);
		request.setAttribute("picList", picList);
		
		if(currentList.size() == (eCount-sCount+1)) {//성공->어느 페이지로?
			request.getRequestDispatcher("views/user/movie/movieListCurrent.jsp").forward(request, response);
		}else {//실패
			request.setAttribute("errorMsg", "영화 메인 페이지 조회에 실패했습니다.");
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
