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
							<div>
								총 평점 8.3 / 10
							</div>
							<!-- 내 평가 -->
							<div>
								<form action="" method="post">
									<!-- 점수 주는 영역 : mouseenter로 class에 on을 넣었다뺐다하기 특정 위치에 마우스를 올리면 그 전은 다 들어오고 그 뒤는 다 안들어오게 자바스크립트 구상-->
									<div>
										<button type="button" class="star on"></button>
										<button type="button" class="star on"></button>
										<button type="button" class="star on"></button>
										<button type="button" class="star on"></button>
										<button type="button" class="star on"></button>
									</div>
									<!-- 리뷰 입력 keyUp으로 카운트하기 -->
									<textarea name="review" id="review" cols="80" rows="2" maxlength="150"
										placeholder="영화 관람평을 작성해주세요. 주제와 무관한 리뷰는 삭제될 수 있습니다."
										style="resize: none;"></textarea>
									<input type="submit" value="등록" class="btn btn-secondary">
								</form>
							</div>


							<!-- 리뷰 목록 -->
							<div>
								총 334건

								최신순
								공감순
							</div>
							<ul>
								<!-- 이 영역이 계속 추가되도록 -->
								<li>
									<div>이모지 영역</div>
									<div>
										아이디
										별점
									</div>
									<div>내용</div>
									<div>
										작성시간
										신고
									</div>
									<div>공감하기</div>
								</li>
								<li>
									<div>이모지 영역</div>
									<div>
										아이디
										별점
									</div>
									<div>내용</div>
									<div>
										작성시간
										신고
									</div>
									<div>공감하기</div>
								</li>
							</ul>

							<div>펼쳐보기</div>
						</div>
					</div>
			</div>
			<!--footer-->
			<%@ include file="../common/footer.jsp" %>
	</body>

	</html>