<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>관리자 - 공지 목록</title>
	</head>

	<body>
		<div id="admin-menu">
			<%@ include file="../common/header.jsp" %>
		</div>
		<div id="container">
			<br>
			<h3>공지/FAQ 목록</h3>
			<!-- 고객센터 기능들 -->
			<div>

				<button>공지 추가</button>
				<button>공지 삭제</button>
				<!-- 삭제를 누를 경우 display:none; 속성이 사라짐 -->
				<div class="delete-form">


				</div>


				<form>
					<input type="search" name="keyword">
					<input type="submit">
				</form>
			</div>

			<!-- 목록 테이블 영역 -->
			<!-- 구분에서 원하는 정보만 볼 수 있도록 조절해야함 -->
			<table>
				<tr>
					<th>No.</th>
					<th>구분</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
				<tr>
					<td>123</td>
					<td>전체</td>
					<td>코로나 방역수칙</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>예매</td>
					<td>코로나 방역수칙</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>중요</td>
					<td>코로나 방역수칙</td>
					<td>22.01.01</td>
				</tr>

			</table>

			<!-- Pagination -->
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>


		</div>
	</body>

	</html>