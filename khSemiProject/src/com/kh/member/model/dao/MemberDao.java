package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;

public class MemberDao {
	private Properties prop = new Properties();

	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	// 아이디 중복 체크
	public int idCheck(Connection conn, String memberId) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				result = Integer.parseInt((rs.getString("COUNT")));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}


	// 이메일 중복 체크
	public int emailCheck(Connection conn, String email) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("emailCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				result = Integer.parseInt((rs.getString("COUNT")));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}


	// 회원 가입
	public int memberInsert(Connection conn, Member m) {
		
		// (MEMBER_NO, MEMBER_ID, MEMBER_PWD, MEMBER_NAME, BIRTH, GENDER, EMAIL, PHONE, INTEREST
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("memberInsert");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemberId());
			pstmt.setString(2, m.getMemberPwd());
			pstmt.setString(3, m.getMemberName());
			pstmt.setString(4, m.getBirth());
			pstmt.setString(5, m.getGender());
			pstmt.setString(6, m.getEmail());
			pstmt.setString(7, m.getPhone());
			pstmt.setString(8, m.getInterest());

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	public ArrayList<Member> memberList(Connection conn, String keyword, PageInfo pi) {
		
		// MEMBER_NO, MEMBER_ID, MEMBER_NAME, BIRTH, GENDER, EMAIL, PHONE
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("memberList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getPageLimit() + 1;
			int endRow = startRow + pi.getBoradLimit() - 1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			pstmt.setString(3,keyword);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new Member(rs.getInt("MEMBER_NO"), rs.getString("MEMBER_ID"), rs.getString("MEMBER_NAME"), rs.getString("BIRTH"), rs.getString("GENDER"), rs.getString("EMAIL"), rs.getString("PHONE")));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}


	public Member adminDetail(Connection conn, int memberNo) {
		Member m = new Member();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("adminDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			
			rs = pstmt.executeQuery();
			//MEMBER_NO, MEMBER_ID, MEMBER_NAME, EMAIL, PHONE
			if(rs.next()) {
				m.setMemberNo(memberNo);
				m.setMemberId(rs.getString("MEMBER_ID"));
				m.setMemberName(rs.getString("MEMBER_NAME"));
				m.setEmail(rs.getString("EMAIL"));
				m.setPhone(rs.getString("PHONE"));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return m;
	}


	public int memberListCount(Connection conn) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("memberListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = Integer.parseInt(rs.getString("COUNT"));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		
		
		return result;
	}

}
