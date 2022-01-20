<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member" %>
<%
	String alertMsg = (String)session.getAttribute("alertMsg");
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시네마헤븐</title>

</head>
<body>
	<%@ include file="views/user/common/header.jsp" %>
	
	<script>
			var msg = "<%= alertMsg%>"
			if(msg != "null"){ // 성공, 경고 메세지 문구가 담겨있을 경우
				alert(msg);
			
			<% session.removeAttribute("alertMsg"); %>
			// 해당 페이지가 로딩 될 때마다 뜨는 alert제거			
			}
	</script>
	
	<a>왜 안뜨지?</a>
	
	<%@ include file="views/user/common/footer.jsp" %>
</body>
</html>