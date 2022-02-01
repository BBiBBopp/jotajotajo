package com.kh.ticket.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.ticket.model.vo.Ticket;

/**
 * Servlet implementation class SelectSeatController
 */
@WebServlet("/selectSeat.ti")
public class SelectSeatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectSeatController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String MemberId = "user01";
		String mName = request.getParameter("mName");
		String rate = request.getParameter("movieAge");
		String selectedTheater = request.getParameter("selectedTheater");
		String auditoriumSeat = request.getParameter("AuditoriumSeat");
		String remainSeatString = request.getParameter("remainSeat"); // XX석
		int remainSeat = Integer.parseInt(remainSeatString.substring(0,remainSeatString.length()-1));
		String runSch = request.getParameter("runningTime");

		Ticket selected = new Ticket(MemberId, auditoriumSeat, selectedTheater, runSch, mName, rate, remainSeat);
		
		request.setAttribute("selected", selected);
		request.getRequestDispatcher("/views/user/ticketing/selectSeat.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
