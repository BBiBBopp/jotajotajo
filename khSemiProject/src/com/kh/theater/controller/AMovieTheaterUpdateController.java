package com.kh.theater.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.theater.model.service.TheaterService;
import com.kh.theater.model.vo.TheaterAuditorium;

/**
 * Servlet implementation class AMovieTheaterUpdateController
 */
@WebServlet("/atUpdate.th")
public class AMovieTheaterUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AMovieTheaterUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int theaterNo = Integer.parseInt(request.getParameter("theaterNo"));
		String theaterName = request.getParameter("theaterName");
		String address = request.getParameter("address");
		int auditoriumNum = Integer.parseInt(request.getParameter("auditoriumNum"));
		String phone = request.getParameter("phone");
		int seatNum = Integer.parseInt(request.getParameter("seatNum"));
		int theaterImg = Integer.parseInt(request.getParameter("theaterImg"));
		String auditoriumName = request.getParameter("auditoriumName");
		int auditoriumSeatNum = Integer.parseInt(request.getParameter("auditoriumSeatNum"));
		String location = request.getParameter("location");
		String traffic = request.getParameter("traffic");
		String parking = request.getParameter("parking");
		
		TheaterAuditorium ta = new TheaterAuditorium();
		
		ta.setTheaterNo(theaterNo);
		ta.setTheaterName(theaterName);
		ta.setAddress(address);
		ta.setAuditoriumNum(auditoriumNum);
		ta.setPhone(phone);
		ta.setSeatNum(seatNum);
		ta.setTheaterImg(theaterImg);
		ta.setAuditoriumName(auditoriumName);
		ta.setAuditoriumSeatNum(auditoriumSeatNum);
		ta.setLocation(location);
		ta.setTraffic(traffic);
		ta.setParking(parking);
		
		int result = new TheaterService().updateTheater(ta);
		
		if(result > 0) {
			
			request.setAttribute("ta", ta);
			
			request.getRequestDispatcher("views/admin/theater/aMovieTheaterDetail.jsp").forward(request, response);
			
		}else {
			request.getSession().setAttribute("alertMsg", "수정되지않았습니다.");
			request.getRequestDispatcher("views/admin/theater/aMovieTheaterList.jsp").forward(request, response);
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
