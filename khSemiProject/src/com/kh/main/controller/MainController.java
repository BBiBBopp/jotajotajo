package com.kh.main.controller;

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
import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;


/**
 * Servlet implementation class NoticeMainController
 */
@WebServlet("/index.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String noticeMain = request.getParameter("noticeMain");
		
		Notice mainList = new NoticeService().MainNotice(noticeMain);
		
		request.setAttribute("mainList", mainList);
		
		
		
		
		int sCount = 1;
		int eCount = 5;
//		int sCount = Integer.parseInt(request.getParameter("startCount"));
//		int eCount = Integer.parseInt(request.getParameter("endCount"));

		ArrayList<Movie> currentList = new MovieService().selectCurrentList(sCount, eCount);
		
		ArrayList<Integer> movieNoList = new ArrayList<>();
		for(Movie mv : currentList)
			movieNoList.add(mv.getMovieNo());
		
		ArrayList<Picture> picList = new MovieService().selectPosterList(movieNoList);
				
		
		request.setAttribute("currentList", currentList);
		request.setAttribute("picList", picList);
		
		
		
		
		
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
	
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
