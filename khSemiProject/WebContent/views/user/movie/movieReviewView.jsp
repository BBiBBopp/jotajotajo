<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>영화 상세 - 영화 정보</title>
	</head>

	<body>
		<!--header-->
		<%@ include file="../common/header.jsp" %>
			<div id="container">
				<!--영화 정보 상단 -->
				<%@ include file="movieSummary.jsp" %>

					<!-- 영화정보/평점 및 리뷰 버튼 영역 -->
					<div class="movie-body">
						<div class="movie-toggle">
							<a href="movieDetailView.jsp" class="movie-menu-half">영화 정보</a><a href="movieReviewView.jsp"
								class="movie-menu-half movie-active-menu">평점 및 리뷰 </a>
						</div>
						<br>

						<!-- 영화 리뷰 영역 -->
						<div class="movie-review">
							<!-- 전체 관람객 평가 -->
							<div id="movie-reTotal">
								총 평점 <br>
								<strong>8.3 / 10</strong>
							</div>
							<!-- 내 평가 -->
							<div id="movie-myReview">
								<form action="" method="post" class="review-form">
									<!-- 점수 주는 영역 : mouseenter로 class에 on을 넣었다뺐다하기 특정 위치에 마우스를 올리면 그 전은 다 들어오고 그 뒤는 다 안들어오게 자바스크립트 구상-->
									<div id="stars">
										<a class="star on">☆</a>
										<a class="star on">☆</a>
										<a class="star on">☆</a>
										<a class="star on">☆</a>
										<a class="star on">☆</a>
									</div>
									<!-- 리뷰 입력 keyUp으로 카운트하기 -->
									<textarea name="review" id="review" cols="80" rows="2" maxlength="150"
										placeholder="영화 관람평을 작성해주세요. 주제와 무관한 리뷰는 삭제될 수 있습니다."
										style="resize: none;"></textarea>
									<button class="btn btn-secondary">등록</button>
								</form>
							</div>


							<!-- 리뷰 목록 -->
							<div>
								<div id="review-count">총 334건</div>

								<div id="review-sort">
									<a>최신순</a>
									<a>공감순</a>
								</div>
							</div>
							<hr>
							<ul>
								<!-- 이 영역이 계속 추가되도록 -->
								<li>
									<div class="review-emoji"><i class='far fa-frown' style='font-size:36px'></i></div>
									<div class="review-text">
										<div>
											kim1234
											2.5
										</div>
										<div>헌법개정안은 국회가 의결한 후 30일 이내에 국민투표에 붙여 국회의원선거권자 과반수의 투표와 투표자 과반수의 찬성을 얻어야 한다.
										</div>
										<div>
											22.01.01
											<a href="movieReviewReport.jsp" target="_blank">신고</a>
										</div>
									</div>
									<div>
										<i class='far fa-thumbs-up' style='font-size:24px'></i>
										342
									</div>
								</li>
								<hr>
								<li>
									<div class="review-emoji"><i class='far fa-smile' style='font-size:36px'></i></div>
									<div class="review-text">
										<div>
											kim1234
											5
										</div>
										<div>헌법개정안은 국회가 의결한 후 30일 이내에 국민투표에 붙여 국회의원선거권자 과반수의 투표와 투표자 과반수의 찬성을 얻어야 한다.
										</div>
										<div>
											22.01.01
											<a href="movieReviewReport.jsp" target="_blank">신고</a>
										</div>
										<div>
											<i class='far fa-thumbs-up' style='font-size:24px'></i>
											231
										</div>
									</div>
								</li>
							</ul>


							<button class="btn btn-light btn-unfold">펼쳐보기</button>

						</div>
					</div>
			</div>
			<!--footer-->
			<%@ include file="../common/footer.jsp" %>
	</body>

	</html>