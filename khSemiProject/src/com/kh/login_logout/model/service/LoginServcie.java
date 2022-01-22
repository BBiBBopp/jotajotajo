package com.kh.login_logout.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.login_logout.model.dao.LoginDao;
import com.kh.member.model.vo.Member;

public class LoginServcie {

	public Member selectMember(String memberId, String memberPwd) {
		
		Connection conn = getConnection();
		
		Member m = new LoginDao().selectMember(conn, memberId, memberPwd);
		
		close(conn);
		
		return m;
	}

	public Member searchId(Member m) {
		
		Connection conn = getConnection();
		
		Member searchMem = new LoginDao().searchId(conn, m);
		
		close(conn);
		
		return searchMem;
	}

	public Member searchPwd(String memberId) {

		Connection conn = getConnection();
		
		Member searchMem = new LoginDao().searchPwd(conn, memberId);
		
		close(conn);
		
		return searchMem;
	}

	public Member pwdCertify(String memberId, String email) {

		Connection conn = getConnection();
		
		Member searchMem = new LoginDao().pwdCertify(conn, memberId, email);
		
		close(conn);
		
		return searchMem;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
