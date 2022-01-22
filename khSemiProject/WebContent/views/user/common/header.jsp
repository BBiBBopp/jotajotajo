<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member" %>
<% 
	String contextPath = request.getContextPath();	

	Member loginUser = (Member)session.getAttribute("loginUser");
	
	String alertMsg = (String)session.getAttribute("alertMsg");
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>header</title>

<!-- 스타일시트 -->
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="<%= contextPath %>/resource/css/user/00_stylesheet.css">

</head>
	
	<script>
			var msg = "<%= alertMsg%>"
			if(msg != "null"){ // 성공, 경고 메세지 문구가 담겨있을 경우
				alert(msg);
			
			<% session.removeAttribute("alertMsg"); %>
			// 해당 페이지가 로딩 될 때마다 뜨는 alert제거			
			}
		</script>
	

<div id="header">
	<div class="logo_area">
		<div class="logo_bg">
			<a href="index.html">
			<img src="../resource/image/cinema_logo900.jpg" alt="시네마헤븐"></a>
		</div>
		<div class="service_area">
			<a href="" class="link search">검색</a>
			<!-- 검색 지우고 돋보기 이미지 넣기 -->
			<% if(loginUser == null) { %>
			<a href = "<%=contextPath%>/loginForm.log" class="link login">로그인</a> <a href="" class="link signIn">회원가입</a>
			<% } else { %>
			<a href = "<%= contextPath %>/logout.log" class="link login">로그아웃</a> <a href="" class="link signIn">마이페이지</a>
			<% } %>
		</div>
	</div>
	<div id="navi_area">
		<div class="group_nav">
			<ul class="list_navi">
				<li class="nav_item"><a href="../movie/moviListMain.jsp" class="link nav">영화</a></li>
				<li class="nav_item"><a href="<%=contextPath%>/mtList.th?currentPage=1" class="link nav">영화관</a></li>
				<li class="nav_item"><a href="<%=contextPath%>/selectMovie.ti" class="link nav">예매</a></li>
				<li class="nav_item"><a href="../movie/moviListMain.jsp" class="link nav">투표하기</a></li>
				<li class="nav_item"><a href="../notice/FAQView.jsp" class="link nav">고객센터</a></li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>