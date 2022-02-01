package com.kh.movie.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.movie.model.vo.Movie;
import com.kh.movie.model.vo.Picture;
import com.kh.movie.model.vo.Report;
import com.kh.movie.model.vo.Review;

import static com.kh.common.JDBCTemplate.*;

public class MovieDao {

	
	
	private Properties prop = new Properties();
			
	public MovieDao() {
		String fileName = MovieDao.class.getResource("/sql/movie/movie-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 영화 현재 상영작 DAO
	 * @param conn
	 * @param sCount
	 * @param eCount
	 * @return
	 */
	public ArrayList<Movie> selectCurrentList(Connection conn, int sCount, int eCount) {
		ArrayList<Movie> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCurrentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sCount);
			pstmt.setInt(2, eCount);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Movie mv = new Movie();
				mv.setMovieNo(rset.getInt("MNO"));
				mv.setMovieName(rset.getString("MNAME"));
				mv.setGenre(rset.getString("GENRE"));
				mv.setRate(rset.getString("RATE"));
//				mv.setAdvanceRate(rset.getDouble("예매율"));
				
				list.add(mv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	/**
	 * 영화 하나에 대한 정보 + 시놉시스 + 배우 DAO
	 * @param conn
	 * @param movieNo
	 * @return
	 */
	public Movie selectMovieDetail(Connection conn, int movieNo, int memberNo) {
		Movie mv = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMovieDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieNo);
			pstmt.setInt(2, memberNo);
			pstmt.setInt(3, movieNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				mv = new Movie();
				mv.setMovieNo(rset.getInt("MNO"));
				mv.setMovieName(rset.getString("MNAME"));
				mv.setGenre(rset.getString("GENRE"));
				mv.setDirector(rset.getString("DIRECTOR"));
				mv.setRuntime(rset.getInt("RTIME"));
				mv.setRate(rset.getString("RATE"));
				mv.setReleaseDate(rset.getDate("RELEASE_DATE"));
				mv.setReviewAvg(rset.getDouble("RE_AVG"));
				mv.setSynopsis(rset.getString("SYNOPSIS"));
				mv.setActor(rset.getString("ACTOR"));
				mv.setMovieLike(rset.getInt("MO_LIKE"));
				mv.setMyLike(rset.getString("MY_LIKE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return mv;
	}

	
	/**
	 * 리뷰 페이지 용, 영화 하나에 대한 정보
	 * @param conn
	 * @param movieNo
	 * @return
	 */
	public Movie selectMovieSummary(Connection conn, int movieNo, int memberNo) {
		Movie mv = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMovieSummary");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieNo);
			pstmt.setInt(2, memberNo);
			pstmt.setInt(3, movieNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				mv = new Movie();
				mv.setMovieNo(rset.getInt("MNO"));
				mv.setMovieName(rset.getString("MNAME"));
				mv.setGenre(rset.getString("GENRE"));
				mv.setDirector(rset.getString("DIRECTOR"));
				mv.setRuntime(rset.getInt("RTIME"));
				mv.setRate(rset.getString("RATE"));
				mv.setReleaseDate(rset.getDate("RELEASE_DATE"));
				mv.setReviewAvg(rset.getDouble("RE_AVG"));
				mv.setMovieLike(rset.getInt("MO_LIKE"));
				mv.setMyLike(rset.getString("MY_LIKE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return mv;
	}
	
	
	/**
	 * 리뷰 리스트 sCount~eCount까지 조회 DAO
	 * @param conn
	 * @param movieNo
	 * @return
	 */
	public ArrayList<Review> selectReviewList(Connection conn, int movieNo, int memberNo, int sCount, int eCount) {
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReviewListNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			//회원 번호,회원번호, 영화번호, 몇개 리뷰  
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, memberNo);
			pstmt.setInt(3, movieNo);
			pstmt.setInt(4, sCount);
			pstmt.setInt(5, eCount);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Review re = new Review();
				re.setReviewNo(rset.getInt("REVIEW_NO"));
				re.setReviewContent(rset.getString("REVIEW_CONTENT"));
				re.setReviewGrade(rset.getInt("REVIEW_GRADE"));
				re.setCreateDate(rset.getDate("REVIEW_DATE"));
				re.setReviewWriter(rset.getString("MEMBER_ID"));
				re.setReviewLike(rset.getInt("REVIEW_LIKE"));
				re.setMyLike(rset.getString("MY_LIKE"));
				list.add(re);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	public ArrayList<Picture> selectPicture(Connection conn, int movieNo) {
		ArrayList<Picture> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPicture");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieNo);
			rset = pstmt.executeQuery();
			
			while(rset.next())
				list.add(new Picture(rset.getInt(1)
									,rset.getInt(2)
									,rset.getInt(3)
									,rset.getString(4)
									,rset.getString(5)
									,rset.getString(6)
									,rset.getDate(7)
									,rset.getString(8)));
//				column number로 붙여놓음 문제있으면 수정할것
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}


	public ArrayList<Picture> selectPosterList(Connection conn, ArrayList<Integer> movieNoList) {
		ArrayList<Picture> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println("dao의 movieNoList"+movieNoList);
		System.out.println("dao의 movieNoList"+movieNoList.size());
		String sql = prop.getProperty("selectPosterList");
		
		try {
			for(int i : movieNoList) {
				System.out.println(i);
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i);
				rset = pstmt.executeQuery();
				
				if(rset.next()) 
					list.add(new Picture(rset.getInt("FILE_NO")
							,rset.getInt("MNO")
							,rset.getInt("FILE_LEVEL")
							,rset.getString("ORIGIN_NAME")
							,rset.getString("CHANGE_NAME")
							,rset.getString("FILE_PATH")
							,rset.getDate("UPLOAD_DATE")
							,rset.getString("STATUS")));
				System.out.println("dao의 movieNoList"+list);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println("dao의 movieNoList"+movieNoList);
		System.out.println("dao의 movieNoList"+movieNoList.size());
		System.out.println("dao의 movieNoList"+list);
		return list;
	}

	public int insertReview(Connection conn, Review re) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, re.getReviewContent());
			pstmt.setInt(2, re.getReviewGrade());
			pstmt.setInt(3, re.getMovieNo());
			pstmt.setInt(4, Integer.parseInt(re.getReviewWriter()));
			pstmt.setInt(5, 1);
			//임시로 1 넣어둠! 예매 테이블 수정되면 하기
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteReviewLike(Connection conn, int memberNo, int reviewNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReviewLike");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, reviewNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int insertReviewLike(Connection conn, int memberNo, int reviewNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReviewLike");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, reviewNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteMovieLike(Connection conn, int movieNo, int memberNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMovieLike");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, movieNo);
			pstmt.setInt(2, memberNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertMovieLike(Connection conn, int movieNo, int memberNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMovieLike");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, movieNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteReview(Connection conn, int reviewNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, reviewNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int reportReview(Connection conn, int reviewNo, int reportReason) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("reportReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, reviewNo);
			pstmt.setInt(2, reportReason);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int countReport(Connection conn) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countReport");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next())
				count = rset.getInt("COUNT");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
	}

	public ArrayList<Report> selectReportList(Connection conn, int startRow, int endRow) {
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReportList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Report rp = new Report();
				rp.setReportNo(rset.getInt("REPORT_NO"));
				rp.setReviewNo(rset.getInt("REVIEW_NO"));
				rp.setReviewContent(rset.getString("REVIEW_CONTENT"));
				rp.setReportDate(rset.getDate("REPORT_DATE"));
				rp.setReason(rset.getString("CATEGORY_CONTENT"));
				rp.setStatus(rset.getString("STATUS"));
				
				list.add(rp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	public int deleteReviewByReport(Connection conn, String[] deleteList) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReviewByReport");
		
		try {
			for(String str : deleteList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(str));
				pstmt.executeUpdate();
				result++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int processReport(Connection conn, String[] deleteList) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("processReport");
		
		try {
			for(String str : deleteList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(str));
				pstmt.executeUpdate();
				result++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int holdReviewByReport(Connection conn, String[] holdList) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("holdReviewByReport");
		
		try {
			for(String str : holdList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(str));
				pstmt.executeUpdate();
				result++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int countAllMovie(Connection conn) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countAllMovie");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next())
				count = rset.getInt("COUNT");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
	}

	public ArrayList<Movie> selectMovieAdminList(Connection conn, int startRow, int endRow) {
		ArrayList<Movie> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMovieAdminList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Movie mv = new Movie();
				mv.setMovieNo(rset.getInt("MNO"));
				mv.setMovieName(rset.getString("MNAME"));
				mv.setGenre(rset.getString("GENRE"));
				mv.setRate(rset.getString("RATE"));
				mv.setRuntime(rset.getInt("RTIME"));
				mv.setStatus(rset.getString("STATUS"));
				mv.setReleaseDate(rset.getDate("RELEASE_DATE"));
				
				list.add(mv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int deleteMovie(Connection conn, String[] deleteList) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMovie");
		
		try {
			for(String str : deleteList) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(str));
				pstmt.executeUpdate();
				result++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertMovie(Connection conn, Movie mv) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMovie");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mv.getMovieName());
			pstmt.setString(2, mv.getGenre());
			pstmt.setString(3, mv.getDirector());
			pstmt.setString(4, mv.getActor());
			pstmt.setInt(5, mv.getRuntime());
			pstmt.setString(6, mv.getRate());
			pstmt.setDate(7, mv.getReleaseDate());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
