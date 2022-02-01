package com.kh.movie.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.movie.model.service.MovieService;
import com.kh.movie.model.vo.Movie;
import com.kh.movie.model.vo.Picture;
import com.kh.movie.model.vo.Schedule;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class MovieInsertController
 */
@WebServlet("/insert.mo")
public class MovieInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MovieInsertController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		if (ServletFileUpload.isMultipartContent(request)) {
			String savePath = request.getSession().getServletContext().getRealPath("/resource/image/movie_upfiles/");
			int maxSize = 1024 * 1024 * 4;// 4MB 크기 제한

			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new MyFileRenamePolicy());

			String movieName = multiRequest.getParameter("title");
			String genre = multiRequest.getParameter("genre");
			String director = multiRequest.getParameter("director");
			String actors = multiRequest.getParameter("actors");
			int runtime = Integer.parseInt(multiRequest.getParameter("runtime"));
			String rate = multiRequest.getParameter("rate");
			String releaseDate = multiRequest.getParameter("releaseDate");

			Movie mv = new Movie();
			mv.setMovieName(movieName);
			mv.setGenre(genre);
			mv.setDirector(director);
			mv.setActor(actors);
			mv.setRuntime(runtime);
			mv.setRate(rate);
			
			ArrayList<Schedule> schedules = new ArrayList<>();
			String schParameter = multiRequest.getParameter("schedules");
			String[] schRows = schParameter.split("/");
			for(String s : schRows) {
				String[] schBundle = s.split(",");
				Schedule sch = new Schedule();
				sch.setRunSch(schBundle[0]);
				sch.setAuditoriumNo(Integer.parseInt(schBundle[1]));
				sch.setMno(Integer.parseInt(schBundle[2]));
				
				schedules.add(sch);
			}
			
			

			ArrayList<Picture> picList = new ArrayList<>();
			for (int i = 0; i < 5; i++) {
				String key = "pic"+i;
				if (multiRequest.getOriginalFileName(key) != null) {
					Picture pic = new Picture();
					pic.setOriginName(multiRequest.getOriginalFileName(key));
					pic.setChangeName(multiRequest.getFilesystemName(key));
					pic.setFilePath("/resource/image/movie_upfiles/");
					
					if(i == 0)
						pic.setFileLevel(1);
					else
						pic.setFileLevel(2);
					
					picList.add(pic);
				}
			}

			int result = new MovieService().insertMovie(mv, schedules, picList);
			
			if(result>0) {
				request.getSession().setAttribute("alertMsg", "영화 등록에 성공했습니다.");
				response.sendRedirect(request.getContextPath()+"/adminList.mo");
			}
			else {
				request.getSession().setAttribute("alertMsg", "영화 등록에 성공했습니다.");
				request.getRequestDispatcher("/views/user/common/errorPage.jsp").forward(request, response);
			}
				
		}
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
