<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>영화 추천 상영작</title>
    </head>

    <body>
        <!--header-->
        <%@ include file="../common/header.jsp" %>
            <div id="container">
                <h3>추천상영작</h3>
                <!-- 추천버튼 -->
                <!-- 로그인 되어있지 않으면 무작위로 하나, 로그인 되어있으면 선택한 내용으로 class btn-primary 교체 -->
                <button class="btn btn-sm btn-light">#공포</button>
                <button class="btn btn-sm btn-light">#드라마</button>
                <button class="btn btn-sm btn-primary">#미스터리</button>
                <button class="btn btn-sm btn-light">#범죄</button>
                <button class="btn btn-sm btn-light">#로맨스</button>
                <button class="btn btn-sm btn-light">#사극</button>
                <button class="btn btn-sm btn-light">#스릴러</button>
                <button class="btn btn-sm btn-light">#액션</button>
                <button class="btn btn-sm btn-primary">#판타지</button>
                <button class="btn btn-sm btn-light">#코미디</button>
                <button class="btn btn-sm btn-light">#19세</button>
                <button class="btn btn-sm btn-light">#SF</button>

                <!-- 추천영화 목록 10개 예매율 DESC, 가나다 ASC -->
                <div class="movie-list">
                    <div class="movie-one">
                        <img src="" alt="" class="movie-poster">
                        <!-- 바로 전 요소에 마우스 오버하면 나오는 영역 -->
                        <div class="poster-button">
                            <a href="#" class="btn">예매하기</a><br><br>
                            <a href="#" class="btn">상세정보</a>
                        </div>
                        <ul>
                            <li>
                                <span>해리포터와 마법사의 돌</span>
                            </li>
                            <li>
                                <span>예매율</span>
                                <em>30%</em>
                            </li>
                        </ul>
                    </div>
                    <div class="movie-one">
                        <img src="" alt="" class="movie-poster">
                        <li>
                            <span>해리포터와 마법사의 돌</span>
                        </li>
                        <li>
                            <span>예매율</span>
                            <em>30%</em>
                        </li>
                    </div>
                    <div class="movie-one">
                        <img src="" alt="" class="movie-poster">
                        <li>
                            <span>해리포터와 마법사의 돌</span>
                        </li>
                        <li>
                            <span>예매율</span>
                            <em>30%</em>
                        </li>
                    </div>
                    <div class="movie-one">
                        <img src="" alt="" class="movie-poster">
                        <li>
                            <span>해리포터와 마법사의 돌</span>
                        </li>
                        <li>
                            <span>예매율</span>
                            <em>30%</em>
                        </li>
                    </div>
                    <div class="movie-one">
                        <img src="" alt="" class="movie-poster">
                        <li><span>해리포터와 마법사의 돌</span></li>
                        <li><span>예매율</span> <em>30%</em></li>
                    </div>
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
            <!--footer : 나중에 경로 교체-->
            <%@ include file="../common/footer.jsp" %>
    </body>

    </html>