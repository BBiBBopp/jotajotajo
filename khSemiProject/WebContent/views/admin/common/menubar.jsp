<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="<%=contextPath %>/resource/css/admin/menubar.css">
<title>메뉴바</title>
</head>
<body>
	<div class="menubar">
		<ul id="manage">
			<li><a class="home" href="#"><img src="<%=contextPath %>/resource/image/cinema_logo900.jpg" alt="시네마헤븐"></a></li>
			<li><a href="#">회원관리</a></li>
			<li><a href="#">영화 목록 관리</a></li>
			<li><a href="#">영화관 관리</a></li>
			<li><a href="#">고객센터</a></li>
			<li><a href="#">투표관리</a>
				<ul>
					<li><a href="<%=contextPath %>/manage.vot1">투표</a></li>
					<li><a href="<%=contextPath %>/manage.vot2">투표결과</a></li>
					<li><a href="<%=contextPath %>/manage.vot3">이전투표목록</a></li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>