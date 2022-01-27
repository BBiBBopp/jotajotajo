<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매내역 확인</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/mypage/reserveList.css">
</head>
<body>

	<%@ include file="../common/header.jsp"%>
	<div class="sub_nav" style="float: left;">
		<%@ include file="../common/subNavigation.jsp"%>
	</div>

	<div class="outer">
		<br>
		<h1 class="title">예매내역 확인</h1>
		<div class="ticket-type">
			<form action="">
				<div class="ticket-head">구분</div>
				<div class="ticket-area">
					<input type="radio" name="ticket" id="now"> 예매 내역 
                    <input type="radio" name="ticket" id="past"> 지난 내역
				</div>
				<div class="ticket-check">
					<input type="date" name="" id=""> 
                    <input type="submit" name="select" id="" value="조회하기">
				</div>
			</form>
		</div>
		<table class="ticket-list-area">
                <tr>
                    <td rowspan="5"><img src="" alt="포스터"></td>
                    <th colspan="4">
                        <div class="movie-list">
                            <div class="movie-list-age">15</div>
                            <div class="movie-list-title">라라랜드</div>
                        </div>
                    </th>
                </tr>
                <tr>
				<th>관람 일시</th>
				<td>2022년 1월 2일 18시 00분</td>
				<th>상영관</th>
				<td>8층 1관</td>
			</tr>
			<tr>
				<th>관람 극장</th>
				<td>강남점</td>
				<th>관람 좌석</th>
				<td>J5, J6</td>
			</tr>
			<tr style="border-top: 1px solid lightgray;">
				<th>결제 날짜</th>
				<td>2021년 12월 31일</td>
				<th>예매 번호</th>
				<td>1234567</td>
			</tr>
			<tr style="padding-bottom: 5px;">
				<th>취소 가능일</th>
				<td>2022년 1월 1일 18시 00분</td>
				<th></th>
				<td></td>
			</tr>
		</table>

		<br> <br>
		<h1 class="title">예매취소 확인</h1>
		<p class="discription">* 상영일 기준 7일간 취소내역을 확인하실 수 있습니다.</p>

		<table class="list-area">
			<thead>
				<tr>
					<th width="10%">취소일시</th>
					<th width="35%">영화명</th>
					<th width="10%">극장</th>
					<th width="10%">상영일시</th>
					<th width="10%">취소금액</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>2022.01.02</td>
					<td>해리포터와 마법사의 돌</td>
					<td>강남점</td>
					<td>2022.01.05</td>
					<td>30,000</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>