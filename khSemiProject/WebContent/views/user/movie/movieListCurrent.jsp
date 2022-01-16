<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>영화 현재 상영작</title>
    </head>

    <body>
        <!--header-->
        <%@ include file="../common/header.jsp" %>
            <div id="container">
                <h3>현재상영작</h3>
                <!-- 현재상영작 목록 -->
<!-- 여기는 github test때문에 추가하는 부분!!!!!! -->
<div class="test-area">
ddddddddd
</div>
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
            </div>
            <!--footer : 나중에 경로 교체-->
            <%@ include file="../common/footer.jsp" %>
    </body>

    </html>