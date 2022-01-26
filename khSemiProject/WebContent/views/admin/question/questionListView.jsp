<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/admin/question/question.css">
</head>
<body>
	<div id="admin-menu">
		<%@ include file="../common/menubar.jsp" %>
	</div>
	<div id="container">
	<h1><b>1:1 문의 관리</b></h1>
	
    <br>
    <table class="table question-list">
        <thead>
          <tr>
            <th scope="col" style="width: 50px;">#</th>
            <th scope="col" style="width: 800px;">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">등록일</th>
            <th scope="col">상태</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td><span class="badge badge-secondary">답변 대기</span></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td><span class="badge badge-success">처리 완료</span></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
            <td><span class="badge badge-success">처리 완료</span></td>
          </tr>
        </tbody>
      </table>
	</div>
</body>
</html>