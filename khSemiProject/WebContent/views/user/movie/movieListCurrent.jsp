<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.movie.model.vo.*" %>
<%
	ArrayList<Movie> currentList = (ArrayList<Movie>)request.getAttribute("currentList");
	ArrayList<Picture> picList = (ArrayList<Picture>)request.getAttribute("picList");
%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>영화 현재 상영작</title>
        <style>
        	.movie-one ul{
        		list-style:none;
        	}
        </style>
    </head>

    <body>
        <!--header-->
        <%@ include file="../common/header.jsp" %>
            <div id="container">
                <h3>현재상영작</h3>
                <!-- 현재상영작 목록 -->
                <div class="movie-list">
                
                <% for(int i = 0; i < currentList.size();i++){ %>
                    <div class="movie-one">
                        <img src="<%=contextPath %><%= picList.get(i).getFilePath()+picList.get(i).getChangeName() %>" alt="" class="movie-poster">
                        <!-- 바로 전 요소에 마우스 오버하면 나오는 영역 -->
                        <div class="poster-button">
                            <a href="#" class="btn">예매하기</a><br><br>
                            <a href="<%=contextPath %>/detail.mo?mno=<%= currentList.get(i).getMovieNo() %>" class="btn">상세정보</a>
                        </div>
                        <ul>
                            <li>
                                <span><%= currentList.get(i).getMovieName() %></span>
                            </li>
                            <li>
                                <span>예매율</span>
                                <em>30%</em>
                            </li>
                        </ul>
                    </div>
                <% } %>    
                    <!-- 더 남아있는 경우 펼쳐보기 버튼 누르면 10개씩 추가 -->


                    <!-- 펼쳐보기 영역 -->
                    <!-- 버튼  -->
                    <button class="btn btn-light btn-unfold">펼쳐보기</button>

                </div>
                <!-- 스틸컷 이미지 -->
                <div class="ad-pic">
                    <a href="#">
                        <img src="" alt="">
                    </a>
                </div>

            </div>
            </div>
            <!--footer : 나중에 경로 교체-->
            <%@ include file="../common/footer.jsp" %>
    </body>

    </html>