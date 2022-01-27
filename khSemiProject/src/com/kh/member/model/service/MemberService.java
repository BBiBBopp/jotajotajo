package com.kh.member.model.service;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.dao.MemberDao;
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

	public ArrayList<Member> memberList(String keyword, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().memberList(conn, keyword, pi);
		
		close(conn);
		
		return list;
	}

	public Member adminDetail(int memberNo) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().adminDetail(conn, memberNo);
		
		close(conn);
		
		
		return m;
	}

	public int memberListCount() {
		Connection conn = getConnection();
		int result = new MemberDao().memberListCount(conn);
		
		close(conn);
		return result;
	}

}
