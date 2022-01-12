<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>관리자 - 영화 등록</title>
	</head>

	<body>
		<div id="admin-menu">
			<%@ include file="../common/header.jsp" %>
		</div>
		<div id="container">
			<br>
			<h3>영화 추가</h3>
			<form action="" method="" enctype="multiPart">
				<table border="1" class="in-form">
					<tr>
						<th>영화명</th>
						<td><input type="text" name="movieTitle"></td>
						<th>포스터 등록</th>
						<td><input type="file" name="poster"></td>
					</tr>
					<tr>
						<th>장르</th>
						<td><input type="text" name="genre"></td>
						<th>스틸컷 1</th>
						<td><input type="file" name="stillcut1"></td>
					</tr>
					<tr>
						<th>감독</th>
						<td><input type="text" name="director"></td>
						<th>스틸컷 2</th>
						<td><input type="file" name="stillcut2"></td>
					</tr>
					<tr>
						<th>출연</th>
						<td>
							<ul>
								<li><input type="text" name="movieTitle" size="5"></li>
								<li>역</li>
								<li><input type="text" name="movieTitle" size="5"></li>
								<li><button class="btn btn-secondary">추가</button></li>
							</ul>
						</td>
						<th>스틸컷 3</th>
						<td><input type="file" name="stillcut3"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="4">
							<table border="1">
								<tr>
									<th>no</th>
									<th>배우</th>
									<th>역</th>
								</tr>
								<tr>
									<td>3</td>
									<td>다니엘</td>
									<td>해리포터</td>
								</tr>
								<tr>
									<td>3</td>
									<td>다니엘</td>
									<td>해리포터</td>
								</tr>
								<tr>
									<td>3</td>
									<td>다니엘</td>
									<td>해리포터</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<th>스틸컷 4</th>
						<td><input type="file" name="stillcut4"></td>
					</tr>
					<tr>
						<th>스틸컷 5</th>
						<td><input type="file" name="stillcut5"></td>
					</tr>
					<tr>
						<th>예고편 링크</th>
						<td><input type="text" name="pv"></td>
					</tr>
					<tr>
						<th>러닝타임</th>
						<td><input type="number" name="runningTime"></td>
						<th rowspan="6">시놉시스</th>
						<td rowspan="6"><textarea name="synopsis" cols="30" rows="10"></textarea></td>
					</tr>
					<tr>
						<th>영화 등급</th>
						<td><input type="text" name="grade"></td>
					</tr>

					<!--상영 시간을 어떤식으로 처리할지 고민해보기-->
					<tr>
						<th>영화관</th>
						<td>
							<ul>
								<li><input type="text" name="theater" size="5"></li>
								<li>극장</li>
								<li><input type="text" name="auditorium" size="5"></li>
								<li>관</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>상영일</th>
						<td>
							<ul>
								<li><input type="datetime-local" name="schedule"></li>
								<li><button class="btn btn-secondary">추가</button></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<table border="1">
								<tr>
									<th>no</th>
									<th>극장명</th>
									<th>관 명</th>
									<th>상영일</th>
								</tr>
								<tr>
									<td>324</td>
									<td>종로점</td>
									<td>A3</td>
									<td>22.01.01 18:00</td>
									<td></td>
								</tr>
								<tr>
									<td>324</td>
									<td>종로점</td>
									<td>A3</td>
									<td>22.01.01 18:00</td>
									<td></td>
								</tr>
								<tr>
									<td>324</td>
									<td>종로점</td>
									<td>A3</td>
									<td>22.01.01 18:00</td>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>


				<button onclick="history.back();">뒤로가기</button>
				<button type="sutbmit">등록</button>
		</div>
		</form>
		</div>
	</body>

	</html>