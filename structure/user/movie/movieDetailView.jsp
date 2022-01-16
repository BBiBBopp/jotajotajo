<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세 - 영화 정보</title>
</head>

<body>
	<!--header-->
	<%@ include file="../common/header.jsp"%>
	<div id="container">
		<!--영화 정보 상단 -->
		<%@ include file="movieSummary.jsp"%>

		<!-- 영화정보/평점 및 리뷰 버튼 영역 -->
		<div class="movie-body">
			<div class="movie-toggle">
				<a href="movieDetailView.jsp"class="movie-menu-half movie-active-menu">영화 정보</a><a href="movieReviewView.jsp" class="movie-menu-half">평점 및 리뷰 </a>
			</div>
			<br>

			<!-- 영화 정보 영역 -->
			<div class="movie-detail">
				<div class="synopsis">
					<h4>시놉시스</h4>
					<p>국회의원의 수는 법률로 정하되, 200인 이상으로 한다. 법원은 최고법원인 대법원과 각급법원으로 조직된다.
						국가는 국민 모두의 생산 및 생활의 기반이 되는 국토의 효율적이고 균형있는 이용·개발과 보전을 위하여 법률이 정하는
						바에 의하여 그에 관한 필요한 제한과 의무를 과할 수 있다. 모든 국민은 헌법과 법률이 정한 법관에 의하여 법률에 의한
						재판을 받을 권리를 가진다. 각급 선거관리위원회는 선거인명부의 작성등 선거사무와 국민투표사무에 관하여 관계 행정기관에
						필요한 지시를 할 수 있다국회의원의 수는 법률로 정하되, 200인 이상으로 한다. 법원은 최고법원인 대법원과
						각급법원으로 조직된다. 국가는 국민 모두의 생산 및 생활의 기반이 되는 국토의 효율적이고 균형있는 이용·개발과 보전을
						위하여 법률이 정하는 바에 의하여 그에 관한 필요한 제한과 의무를 과할 수 있다. 모든 국민은 헌법과 법률이 정한
						법관에 의하여 법률에 의한 재판을 받을 권리를 가진다. 각급 선거관리위원회는 선거인명부의 작성등 선거사무와
						국민투표사무에 관하여 관계 행정기관에 필요한 지시를 할 수 있다</p>
				</div>
				<hr>
				<div class="actor">
					<h4>등장인물</h4>
					<ul>
						<li>aaa / aaa</li>
						<li>aaa / aaa</li>
						<li>aaa / aaa</li>
						<li>aaa / aaa</li>
						<li>aaa / aaa</li>
						<li>aaa / aaa</li>
						<li>aaa / aaa</li>
						<li>aaa / aaa</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--footer : 나중에 경로 교체-->
	<%@ include file="../common/footer.jsp"%>
</body>

</html>