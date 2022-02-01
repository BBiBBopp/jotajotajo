package com.kh.member.service;
import java.sql.Connection;

import com.kh.member.dao.MemberDao;
import com.kh.member.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;
public class MemberService {
	
	
	
	

	public int idCheck(String memberId) {
		
		
		Connection conn = getConnection();
		
		int result = new MemberDao().idCheck(conn, memberId);
		
		close(conn);
		
		
		return result;
	}

	public int emailCheck(String email) {
		Connection conn = getConnection();
		
		int result = new MemberDao().emailCheck(conn, email);
		
		close(conn);
		
		
		return result;
	}

	public int memberInsert(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().memberInsert(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

}
