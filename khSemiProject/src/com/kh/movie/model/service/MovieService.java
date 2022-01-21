package com.kh.movie.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.movie.model.dao.MovieDao;
import com.kh.movie.model.vo.Movie;
import com.kh.movie.model.vo.Picture;
import com.kh.movie.model.vo.Review;

import static com.kh.common.JDBCTemplate.*;

public class MovieService {

	public ArrayList<Movie> selectCurrentList(int sCount, int eCount) {
		Connection conn = getConnection();
		
		ArrayList<Movie> list = new MovieDao().selectCurrentList(conn, sCount, eCount);
		
		close(conn);
		
		return list;
	}

	public Movie selectMovie(int movieNo) {
		Connection conn = getConnection();
		
		Movie m = new MovieDao().selectMovie(conn, movieNo);
		
		close(conn);
		
		return m;
	}

	public ArrayList<Picture> selectPicture(int movieNo) {
		Connection conn = getConnection();
		
		ArrayList<Picture> list = new MovieDao().selectPicture(conn, movieNo); 
		
		close(conn);
		
		return list;
	}

	public ArrayList<Picture> selectPosterList(ArrayList<Integer> movieNoList) {
		Connection conn = getConnection();
		
		ArrayList<Picture> list = new MovieDao().selectPosterList(conn, movieNoList);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Review> selectReviewList(int movieNo) {
		Connection conn = getConnection();
		
		ArrayList<Review> list = new MovieDao().selectReviewList(conn, movieNo);
		
		close(conn);
		
		return list;
	}


}
