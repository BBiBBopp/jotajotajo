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
			<form action="<%= contextPath %>/insert.mo" method="post" enctype="multiPart">
				<table border="1" class="in-form">
					<tr>
						<th>영화명</th>
						<td><input type="text" name="title" required></td>
						<th>포스터 등록</th>
						<td><input type="file" name="pic0" required></td>
					</tr>
					<tr>
						<th>장르</th>
						<td><input type="text" name="genre" placeholder=",로 연결하여 공백없이 작성" required></td>
						<!-- 시간나면 해당부분은 버튼을 클릭해서 값이 입력되도록!!!! -->
						<th>스틸컷 1</th>
						<td><input type="file" name="pic1" required></td>
					</tr>
					<tr>
						<th>감독</th>
						<td><input type="text" name="director"></td>
						<th>스틸컷 2</th>
						<td><input type="file" name="pic2"></td>
					</tr>
					<tr>
						<th>출연</th>
						<td>
							<ul>
								<li><input type="text" id="role" size="5"></li>
								<li>역</li>
								<li><input type="text" id="actor" size="5"></li>
								<li><button type="button" class="btn btn-secondary" id="addActor">추가</button></li>
							</ul>
						</td>
						<th>스틸컷 3</th>
						<td><input type="file" name="pic3"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="4">
							<table border="1" id="actors">
								<thead>
									<tr>
										<th>역</th>
										<th>배우</th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</td>
					</tr>
					<tr>
						<th>스틸컷 4</th>
						<td><input type="file" name="pic4"></td>
					</tr>
					<tr>
						<th>스틸컷 5</th>
						<td><input type="file" name="pic5"></td>
					</tr>
					<tr>
						<th>러닝타임</th>
						<td><input type="number" name="runtime"></td>
						<th rowspan="7">시놉시스</th>
						<td rowspan="7"><textarea name="synopsis" cols="30" rows="10"></textarea></td>
					</tr>
					<tr>
						<th>영화 등급</th>
						<td><input type="text" name="rate"></td>
					</tr>

					<!--상영 시간을 어떤식으로 처리할지 고민해보기-->
					<tr>
						<th>영화관</th>
						<td>
							<ul>
								<li><input type="text" id="theater" size="5"></li>
								<li>극장</li>
								<li><input type="text" id="auditorium" size="5"></li>
								<li>관</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>상영일</th>
						<td>
							<ul>
								<li><input type="datetime-local" id="schedule"></li>
								<li><button type="button" class="btn btn-secondary" id="addSchedule">추가</button></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<table border="1" id="schedules">
								<thead>
									<tr>
										<th>극장명</th>
										<th>관 명</th>
										<th>상영일</th>
									</tr>
								</thead>
								<tbody><!-- 추가 --></tbody>
							</table>
						</td>
					</tr>
				</table>
				<input type="hidden" name="actors">
				<input type="hidden" name="schedules">
				<button onclick="history.back();">뒤로가기</button>
				<button type="button" id="insertMovie" onclick="return submitMovie();">등록</button>
			</form>
		</div>
		<script>
			$(function(){
				$('#addActor').click(function(){
					$('#actors tbody').append('<tr><td>'+$('#role').val()+'</td><td>'+$('#actor').val()+'</td></tr>');
					$('#role').val('');
					$('#actor').val('');
				})
				$('#removeActor').click(function(){
					$(this).parent().remove();
				})
				$('#addSchedule').click(function(){
					$('#schedules tbody').append('<tr><td>'+$('#theater').val()+'</td><td>'+$('#auditorium').val()+'</td><td>'+$('#schedule').val()+'</td></tr>');
					$('#schedule').val('');
				})
				$('#removeSchedule').click(function(){
					$(this).parent().remove();
				})
			})
			
			//테이블에 저장한 값 input:hidden의 value에 넣어 전달
			function submitMovie(){
				var actorRows = $('#actors>tbody').children().length;
				var $actorRows = $('#actors>tbody').children()
				var bundle = $actorRows.eq(0).children().eq(0).text()+'/'+$actorRows.eq(0).children().eq(1).text();
				for(var i = 1; i < rows ; i++){
					bundle += ','+$actorRows.eq(i).children().eq(0).text()+'/'+$actorRows.eq(i).children().eq(1).text();
				}
				$('input[name=actors]').val(bundle);
				
				var schduleRows = $('#schedules>tbody').children().length;
				var $scheduleRows = $('#schedules>tbody').children()
				var bundle = $scheduleRows.eq(0).children().eq(0).text()+'/'+$scheduleRows.eq(0).children().eq(1).text();
				for(var i = 1; i < rows ; i++){
					bundle += ','+$scheduleRows.eq(i).children().eq(0).text()+'/'+$scheduleRows.eq(i).children().eq(1).text();
				}
				$('input[name=schedules]').val(bundle);
			}
		</script>
	</body>

	</html>