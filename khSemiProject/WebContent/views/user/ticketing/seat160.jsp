<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
	
    <% for(int j=1; j<11; j++) { %>
		<% for(int i=1; i<17; i++) { %>
			<button type="button" class="btn btn-outline-secondary btn-lg" style="margin-bottom: 5px; width:25;"><%= i %></button>
			<% if(i == 4) { %>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<% } else if(i == 12) { %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<% } %>
		<% } %>
        <br>
    <% } %>
</body>
</html>