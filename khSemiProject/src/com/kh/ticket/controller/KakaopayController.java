package com.kh.ticket.controller;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class KakaopayController
 */
@WebServlet("/pay.ti")
public class KakaopayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KakaopayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POST방식 -> 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 값 뽑기
		
		
		URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection connection = (HttpURLConnection) address.openConnection(); // 서버 연결
		connection.setRequestMethod("POST");
		connection.setRequestProperty("Authorization", "f1ded0476926f8faf65e7d0247d1e439"); // admin키
		connection.setRequestProperty("Content-type", "application/json; charset=UTF-8");
	
		String parameter = "cid=TC0ONETIME" // 가맹점 코드
				+ "&partner_order_id=partner_order_id" // 가맹점 주문번호
				+ "&partner_user_id=partner_user_id" // 가맹점 회원 id
				+ "&item_name=초코파이" // 상품명
				+ "&quantity=1" // 상품 수량
				+ "&total_amount=5000" // 총 금액
				+ "&vat_amount=200" // 부가세
				+ "&tax_free_amount=0" // 상품 비과세 금액
				+ "&approval_url=http://localhost:8000/" // 결제 성공 시
				+ "&fail_url=http://localhost:8000/" // 결제 실패 시
				+ "&cancel_url=http://localhost:8000/"; // 결제 취소 시
		
		OutputStream send = connection.getOutputStream();
		DataOutputStream dataSend = new DataOutputStream(send);
		dataSend.writeBytes(parameter);
		dataSend.close();
		
		int result = connection.getResponseCode();
		InputStream receive;
		
		

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
