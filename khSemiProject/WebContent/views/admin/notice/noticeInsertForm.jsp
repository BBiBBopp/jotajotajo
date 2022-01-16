<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>관리자 - 공지/FAQ 등록</title>
	</head>

	<body>
		<div id="admin-menu">
			<%@ include file="../common/header.jsp" %>
		</div>
		<div id="container">
			<br>
			<h3>고객센터 등록</h3>
			<form action="" method="">
				<table>
					<tr>
						<td colspan="4">
							<!-- 선택할 때 바뀌는거 confirm 한번 띄우기 -->
							<button class="btn btn-primary">공지사항</button>
							<button class="btn btn-secondary">FAQ</button>
						</td>
					</tr>
					<tr>
						<th>구분</th>
						<td><select name="category">
								<!-- 카테고리는 공지/FAQ 선택 후에 바뀜 -->
								<option>전체</option>
								<option>전체</option>
								<option>전체</option>
								<option>전체</option>
								<option>전체</option>
							</select></td>
						<th>제목</th>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<th>본문</th>
						<td colspan="3"><input type="file" name="attachment"></td>
					</tr>
					<tr>
						<td colspan="4"><textarea rows="20" cols="100"></textarea>
						</td>
					</tr>
				</table>
				<button type="submit">등록하기</button>
				<button onclick="history.back();">뒤로가기</button>
			</form>

		</div>
	</body>

	</html>