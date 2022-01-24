package com.kh.movie.model.vo;

import java.sql.Date;

public class Movie {
	private int movieNo;
	private String movieName;
	private String genre;
	private String director;
	private String actor;
	private int runtime;
	private String rate; //영화 등급
	private String synopsis;
	private String status;
	private double advanceRate;//예매율
	private Date releaseDate; // 재개봉일
	

	public Movie() {
		super();
	}

	public Movie(int movieNo, String movieName, String genre, String director, String actor, int runtime, String rate,
			String synopsis, String status) {
		super();
		this.movieNo = movieNo;
		this.movieName = movieName;
		this.genre = genre;
		this.director = director;
		this.actor = actor;
		this.runtime = runtime;
		this.rate = rate;
		this.synopsis = synopsis;
		this.status = status;
	}

	public Movie(int movieNo, String movieName, String genre, String director, String actor, int runtime, String rate,
			String synopsis, String status, double advanceRate) {
		super();
		this.movieNo = movieNo;
		this.movieName = movieName;
		this.genre = genre;
		this.director = director;
		this.actor = actor;
		this.runtime = runtime;
		this.rate = rate;
		this.synopsis = synopsis;
		this.status = status;
		this.advanceRate = advanceRate;
	}

	public Movie(int movieNo, String movieName, String genre, int runtime, String rate, String status,
			Date releaseDate) {
		super();
		this.movieNo = movieNo;
		this.movieName = movieName;
		this.genre = genre;
		this.runtime = runtime;
		this.rate = rate;
		this.status = status;
		this.releaseDate = releaseDate;
	}
	

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public int getMovieNo() {
		return movieNo;
	}

	public void setMovieNo(int movieNo) {
		this.movieNo = movieNo;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public int getRuntime() {
		return runtime;
	}

	public void setRuntime(int runtime) {
		this.runtime = runtime;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getAdvanceRate() {
		return advanceRate;
	}

	public void setAdvanceRate(double advanceRate) {
		this.advanceRate = advanceRate;
	}

	@Override
	public String toString() {
		return "Movie [movieNo=" + movieNo + ", movieName=" + movieName + ", genre=" + genre + ", director=" + director
				+ ", actor=" + actor + ", runtime=" + runtime + ", rate=" + rate + ", synopsis=" + synopsis
				+ ", status=" + status + ", advanceRate=" + advanceRate + ", releaseDate=" + releaseDate + "]";
	}

	
}

