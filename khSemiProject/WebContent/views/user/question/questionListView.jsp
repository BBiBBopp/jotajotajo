<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 목록</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/question/question.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<%@ include file="../common/header.jsp"%>
	<div class="sub_nav" style="float:left;">
		<%@ include file="../common/subNavigation.jsp"%>
	</div>

	<div class="outer">
		<br>
		<h1 class="title">문의 내역 확인</h1>
		<p class="discription">고객센터를 통해 남기신 1:1문의내역을 확인하실 수 있습니다.</p>
		<br>

		<div class="Qform-btn">
			<a href="<%=contextPath%>/enrollForm.no %>"
				class="btn btn-sm btn-primary">1:1 문의하기</a> <br> <br>
		</div>
		<table class="list-area">
			<thead>
				<tr>
					<th>번호</th>
					<th width="100">유형</th>
					<th width="400">제목</th>
					<th>답변 상태</th>
					<th width="100">등록일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>일반 문의</td>
					<td>결제 취소 되나요?</td>
					<td>O</td>
					<td>22/01/02</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>