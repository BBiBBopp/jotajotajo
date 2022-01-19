<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 작성</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/question/question.css">
</head>
<body>

	<%@ include file="../common/header.jsp"%>
	<div class="outer">

		<br>
		<h1 class="title">문의 작성하기</h1>
		<br> <br> <br>

		<table class="list-area Qform">
			<tr>
				<th>제목</th>
				<td><input type="text" name="" id="" style="width: 100%"></td>
				<th>문의 유형</th>
				<td><select name="Qtype" id="Qtype" style="width: 100%">
						<option value="general">일반문의</option>
						<option value="compliment">칭찬</option>
						<option value="complain">불만</option>
						<option value="suggest">제안</option>
				</select></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3" class="Qcontent"><textarea name="" id=""
						cols="50" rows="15" style="resize: none;"></textarea></td>
			</tr>
			<tr>
				<th>사진 첨부</th>
				<td colspan="3" class="Qanswer">
					<p class="pic-disc">
						* JPEG, PNG형식의 5M 이하의 파일만 첨부 가능합니다. <br> * 개인정보가 포함된 이미지 등록은
						자제하여 주시기 바랍니다. <br>
					</p> <input type="file" name="" id="">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>