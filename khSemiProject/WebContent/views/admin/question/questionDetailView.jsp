<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 답변하기</title>
</head>
<body>
	<div id="admin-menu">
		<%@ include file="../common/menubar.jsp" %>
	</div>
	<div id="container" style="margin-left: 200px; padding: 30px;">
	<h1><b>1:1 문의 관리</b></h1>
    <br>
    <table class="table" style="border-top: 2px solid black; border-bottom: 2px solid black; width: 1300px;">
        <tbody>
          <tr>
            <th scope="col" colspan="">제목</th>
            <td colspan="3">결제 취소 되나요?</td>
          </tr>
          <tr>
            <th scope="row">등록일</th>
            <td>22.01.01</td>
            <th scope="row">문의 유형</th>
            <td>일반문의</td>
          </tr>
          <tr>
            <th scope="row">내용</th>
            <td colspan="3">Jacob</td>
          </tr>
          <tr>
            <th scope="row">답변</th>
            <td colspan="3"><textarea name="comment" id="comment" rows="10" style="width: 100%;"></textarea></td>
          </tr>
        </tbody>
      </table>
	</div>
</body>
</html>