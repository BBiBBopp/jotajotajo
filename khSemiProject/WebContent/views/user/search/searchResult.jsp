<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, com.kh.search.model.vo.SearchMovie, 
				   com.kh.theater.model.vo.Theater, com.kh.movie.model.vo.Review" %>
<%
	ArrayList<SearchMovie> movieList = (ArrayList<SearchMovie>)request.getAttribute("movieList");
	ArrayList<Theater> theaterList = (ArrayList<Theater>)request.getAttribute("theaterList");
	ArrayList<Review> reviewList = (ArrayList<Review>)request.getAttribute("reviewList");
	

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<link rel="stylesheet" href="../../../resource/css/00_stylesheet.css">
</head>
<body>

	<%@ include file="../common/header.jsp" %>
	<br><br><br>
	
	
	<div id="container">
            <div>
                <h2>> 검색결과</h2>
                <br><br>
				                

                <div>
	                <h3>영화</h3> 
	                <hr size="4" color="lightgray">
	                	 <% if(movieList.isEmpty()){ %>
	            			<p>검색된 영화가 없습니다.</p>
            			 <% } else {%>
	                		<% for(SearchMovie sb : movieList) {%>
		                
			                    <%= sb.getmNo() %>
			                    <%= sb.getmName() %>
			                    <%= sb.getGenre() %>
			                    <%= sb.getDirector() %>
			                    <%= sb.getActor() %>
			                    <%= sb.getrTime() %>
			                    <%= sb.getFilePath() %>
			                    <%= sb.getChangeName() %>
		                
	                		<% } %>
	                	 <% } %>
	                <p align="right">더보기 ></p> 
	                <hr size="1"  color="lightgray"> <br><br>
	                
                </div>
                
                <div>
	                <h3>영화관</h3>
	                <hr size="4"  color="lightgray">
	                	<% if(theaterList.isEmpty()){ %>
	            			<p>검색된 영화관이 없습니다.</p>
            			 <% } else {%>
	                		<% for(Theater th : theaterList) {%>
		                
			                    <%= th.getTheaterNo() %>
			                    <%= th.getTheaterName() %>
			                    <%= th.getAddress() %>
			                    
	                		<% } %>
	                	 <% } %>
	                <p align="right">더보기 ></p>
	                <hr size="1"  color="lightgray"> <br><br>
                </div>
                
                <div>
                <h3>영화 리뷰</h3>
	                <hr size="4"  color="lightgray">
	                	<% if(reviewList.isEmpty()){ %>
	            			<p>검색된 리뷰가 없습니다.</p>
            			 <% } else {%>
	                		<% for(Review r : reviewList) {%>
		                
			                    <%= r.getReviewNo() %>
			                    <%= r.getReviewContent() %>
			                    <%= r.getMno() %>
			                    
	                		<% } %>
	                	 <% } %>
	                <p align="right">더보기 ></p>
	                <hr size="1"  color="lightgray">
                </div>
            </div>
        </div>




	<%@ include file="../common/footer.jsp" %>


</body>
</html>