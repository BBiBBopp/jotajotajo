<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>관리자 - 영화 목록</title>
	</head>

	<body>
		<div id="admin-menu">
			<%@ include file="../common/header.jsp" %>
		</div>
		<div id="container">
			<br>
			<h3>영화 목록</h3>
			<!-- 영화 기능들 -->
			<div>

				<button>영화 추가</button>
				<button>영화 삭제</button>
				<!-- 삭제를 누를 경우 display:none; 속성이 사라짐 -->
				<div class="delete-form">


				</div>


				<form>
					<input type="search" name="keyword">
					<input type="submit">
				</form>
			</div>

			<!-- 목록 테이블 영역 -->
			<table>
				<tr>
					<th>No.</th>
					<th>제목</th>
					<th>장르</th>
					<th>영화 등급</th>
					<th>재개봉일</th>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
					<td>22.01.01</td>
				</tr>
				<tr>
					<td>123</td>
					<td>해리포터와 마법사의 돌</td>
					<td>판타지, 드라마</td>
					<td>12</td>
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