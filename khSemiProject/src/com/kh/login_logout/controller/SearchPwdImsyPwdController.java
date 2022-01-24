package com.kh.login_logout.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.MailSend;
import com.kh.login_logout.model.service.LoginService;

/**
 * Servlet implementation class SearchPwdImsyPwdController
 */
@WebServlet("/spwdimsy.sch")
public class SearchPwdImsyPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPwdImsyPwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// jsp파일에서 받은 이메일로 임시비밀번호 발급 -> DB다녀올 필요 x
		// 발급받은 임시비밀번호 DB에 저장
		// 임시비밀번호 생성방법
		// 영문 대문자와 소문자, 숫자, 특수문자를 하나 이상 포함하여 8~16
        // var memberPwdCheck = RegExp(/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{8,16}$/);
		
		String memberId = request.getParameter("memberId");
		String email = request.getParameter("email");	
		
		
		int len = 16; // 임시비밀번호 길이
		char[] charSet = new char[] { '1', '2', '3', '4', '5', '6', '7', '8',
									  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
									  'L', 'N', 'U', 'P', 'Q', 'R', 'S', 'T',
									  '!', '@', '#', '$', '%', '^', '*'}; // 임시비밀번호에 들어갈 수 있는 문자들
			
		int idx = 0; 
			
		StringBuffer sb = new StringBuffer(); 
			
//		System.out.println("charSet.length :::: "+charSet.length); // 임시비밀번호에 들어갈 수 잇는 문자들의 길이확인
			
		for (int i = 0; i < len; i++) { 
				
			idx = (int) (charSet.length * Math.random()); // 랜덤으로 들어갈 문자의 인덱스 생성
				
//			System.out.println("idx :::: "+idx); // 랜덤으로 생성되는 문자 확인
				
			sb.append(charSet[idx]); // 랜덤으로 생성된 문자를 문자열끝에 추가
		} 
			
		String imsyPwd = sb.toString();
//		System.out.println(sb); // 완성된 임시비밀번호 확인
		
		// 임시비밀번호 생성 완료
		// => 이메일에 임시비밀번호 담아서 보내기
		
		int num = 2; // 인증번호는 1, 임시비밀번호는 2로 고정해서 넘기기
		
		MailSend ms = new MailSend();
		
		ms.welcomeMailSend(email, imsyPwd, num);
		
		// 임시비밀번호 DB에 저장
		
		
		int result = new LoginService().updateImsyPwd(memberId, imsyPwd);
		
		if(result > 0) {

			request.getRequestDispatcher("views/user/loginLogout/searchPwd_successForm.jsp").forward(request, response);
			
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
