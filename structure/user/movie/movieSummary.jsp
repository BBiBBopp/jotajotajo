<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- 해결해야하는 문제점
1. slide 이미지가 로딩 안되는 것 
2. 포스터와 텍스트가 엇갈리게 나오는것
3. 찜하기에 하트 제대로 넣기 -->

<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>영화 요약</title>
	</head>

	<body>
		<!-- movie-summary 전체 감싸는 영역-->
		<div class="movie-summary">

			<!-- 영화 스틸컷 슬라이드 영역 -->
			<div id="demo" class="carousel slide height600" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="../../../resource/image/flower1.png" alt="Los Angeles">
					</div>
					<div class="carousel-item">
						<img src="../../../resource/image/flower2.png" alt="Chicago">
					</div>
					<div class="carousel-item">
						<img src="../../../resource/image/flower3.png" alt="New York">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a>
				<a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon"></span>
				</a>

			</div>


			<!-- 영화 요약 정보 영역 -->
			<div class="movie-summary">
				<div id="movie-summary-poster">
					<img src="" alt="">
				</div>
				<div id="movie-summary-text">
					<br>
					<h3>영화타이틀</h3>
					<ul>
						<li>
							<span>관람객 평점</span>
							<span>8.5</span>
						</li>
						<li>
							<span>예매율</span>
							<span>30.5%</span>
						</li>
					</ul>
					<hr>
					<ul>
						<li>
							<span>감독</span>
							<span>크리스토퍼 놀란</span>
						</li>
						<li>
							<span>재개봉일</span>
							<span>22/01/01</span>
						</li>
						<li>
							<span>장르</span>
							<span>판타지, 액션</span>
						</li>
					</ul>

					<!-- 버튼 영역 -->
					<!-- <div class="d-flex justify-content-end"> -->
					<div>
						<a href="#찜하기" class="btn btn-danger">&#xf004;</a>
						<a href="#예매로이동" class="btn btn-danger">예매하기</a>
					</div>
				</div>
			</div>

		</div>
	</body>

	</html>