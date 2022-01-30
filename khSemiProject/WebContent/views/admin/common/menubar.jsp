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
<link rel="stylesheet" href="<%=contextPath %>/resource/css/admin/common/menubar.css">
<title>메뉴바</title>
</head>
<body>
	<div class="menubar">
		<ul id="manage">
			<li><a class="home" href="#"><img src="<%=contextPath %>/resource/image/user/member/cinema_logo_wthie.png" alt="시네마헤븐"></a></li>
			<li><a href="<%=contextPath %>/memberList.me?currentPage=1">회원관리</a></li>
			<li>
				<a href="#">영화 목록 관리</a>
				<ul>
					<li><a href="#"> 영화 관리</a></li>
					<li><a href="#"> 리뷰 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="<%= contextPath%>/atList.th?currentPage=1">영화관 관리</a>
				<ul>
					<li><a href="<%= contextPath%>/atList.th?currentPage=1"> 등록된 영화관</a></li>
					<li><a href="#"> 영화관 등록</a></li>
					<li><a href="#"> 영화관 수정</a></li>
				</ul>
			</li>
			<li>
				<a href="#">고객센터</a>
				<ul>
					<li><a href="#"> FAQ 관리</a></li>
					<li><a href="#"> 공지사항 관리</a></li>
					<li><a href="#"> 1:1 문의 관리</a></li>
				</ul>
			</li> 
			<li>
				<a href="manage.vot1">투표관리</a>
				<ul>
					<li><a href="<%=contextPath %>/manage.vot1"> 투표</a></li>
				</ul>
			</li>
			<li><a href="<%=contextPath %>/logout.log">로그아웃</a></li>
		</ul>
	</div>
</body>
</html>