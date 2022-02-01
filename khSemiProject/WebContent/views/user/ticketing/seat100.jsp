<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div class="select-seat-wrapper" style="text-align: center;">
	
    <% for(int j=1; j<11; j++) { %>
		<% for(int i=1; i<11; i++) { %>
			<button type="button" class="btn btn-outline-secondary btn-lg" style="margin-bottom: 5px; padding: 0.375rem 0.75rem;"><%= i %></button>
			<% if(i == 2) { %>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<% } else if(i == 8) { %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<% } %>
		<% } %>
        <br>
    <% } %>

    </div>
</body>
</html>