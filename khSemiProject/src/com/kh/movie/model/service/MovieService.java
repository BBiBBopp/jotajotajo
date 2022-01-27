package com.kh.movie.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.movie.model.dao.MovieDao;
import com.kh.movie.model.vo.Movie;
import com.kh.movie.model.vo.Picture;
import com.kh.movie.model.vo.Review;

import static com.kh.common.JDBCTemplate.*;

public class MovieService {

	/**
	 * 영화 현재 상영작 Service
	 * @param sCount
	 * @param eCount
	 * @return
	 */
	public ArrayList<Movie> selectCurrentList(int sCount, int eCount) {
		Connection conn = getConnection();
		
		ArrayList<Movie> list = new MovieDao().selectCurrentList(conn, sCount, eCount);
		
		close(conn);
		
		return list;
	}
	
	/**
	 * 영화 하나에 대한 정보 + 시놉시스 + 배우 Service
	 * @param movieNo
	 * @return
	 */
	public Movie selectMovieDetail(int movieNo, int memberNo) {
		Connection conn = getConnection();
		
		Movie mv = new MovieDao().selectMovieDetail(conn, movieNo, memberNo);
		
		close(conn);
		
		return mv;
	}
	
	/**
	 * 리뷰 페이지 용, 영화 하나에 대한 정보 
	 * @param movieNo
	 * @return
	 */
	public Movie selectMovieSummary(int movieNo, int memberNo) {
		Connection conn = getConnection();
		
		Movie mv = new MovieDao().selectMovieSummary(conn, movieNo, memberNo);
		
		close(conn);

		System.out.println(mv);
		return mv;
	}
	
	/**
	 * 리뷰 리스트 상위 10개 Service
	 * @param movieNo
	 * @return
	 */
	public ArrayList<Review> selectReviewList(int movieNo, int memberNo, int sCount, int eCount) {
		Connection conn = getConnection();
		
		ArrayList<Review> list = new MovieDao().selectReviewList(conn, movieNo, memberNo, sCount, eCount);
		
		close(conn);
		
		return list;
	}
	
	
	/**
	 * 영화 하나에 대한 picture들 조회
	 * @param movieNo
	 * @return
	 */
	public ArrayList<Picture> selectPicture(int movieNo) {
		Connection conn = getConnection();
		
		ArrayList<Picture> list = new MovieDao().selectPicture(conn, movieNo); 
		
		close(conn);
		
		return list;
	}
	
	
	/**
	 * 영화 리스트에 뿌릴 포스터들 조회
	 * @param movieNoList
	 * @return
	 */
	public ArrayList<Picture> selectPosterList(ArrayList<Integer> movieNoList) {
		Connection conn = getConnection();
		
		ArrayList<Picture> list = new MovieDao().selectPosterList(conn, movieNoList);
		
		close(conn);
		
		return list;
	}

	public int insertReview(Review re) {
		Connection conn = getConnection();
		
		int result = new MovieDao().insertReview(conn, re);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int deleteReviewLike(int memberNo, int reviewNo) {
		Connection conn = getConnection();
		
		int result = new MovieDao().deleteReviewLike(conn, memberNo, reviewNo);
		
		if(result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int insertReviewLike(int memberNo, int reviewNo) {
		Connection conn = getConnection();
		
		int result = new MovieDao().insertReviewLike(conn,  memberNo, reviewNo);
		
		if(result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int deleteMovieLike(int movieNo, int memberNo) {
		Connection conn = getConnection();
		
		int result = new MovieDao().deleteMovieLike(conn, movieNo, memberNo);
		
		if(result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int insertMovieLike(int movieNo, int memberNo) {
		Connection conn = getConnection();
		
		int result = new MovieDao().insertMovieLike(conn, movieNo, memberNo);
		
		if(result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int deleteReview(int reviewNo) {
		Connection conn = getConnection();
		
		int result = new MovieDao().deleteReview(conn, reviewNo);
		
		if(result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int reportReview(int reviewNo, int reportReason) {
		Connection conn = getConnection();
		
		int result = new MovieDao().reportReview(conn, reviewNo, reportReason);
		
		if(result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}




}
