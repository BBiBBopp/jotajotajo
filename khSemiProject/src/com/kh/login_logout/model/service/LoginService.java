package com.kh.login_logout.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.login_logout.model.dao.LoginDao;
import com.kh.member.model.vo.Member;

public class LoginService {

	public Member selectMember(String memberId, String memberPwd) {
		
		Connection conn = getConnection();
		
		Member m = new LoginDao().selectMember(conn, memberId, memberPwd);
		
		close(conn);
		
		return m;
	}

}