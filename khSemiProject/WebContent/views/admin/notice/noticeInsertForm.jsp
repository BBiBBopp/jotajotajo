<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.Category" %>
<% 
	String type = (String)request.getAttribute("type");
	ArrayList<Category> category = (ArrayList<Category>)request.getAttribute("category");
%>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>관리자 - 공지/FAQ 등록</title>
	</head>

	<body>
		<div id="admin-menu">
			<%@ include file="../common/header.jsp" %>
		</div>
		<div id="container">
			<br>
			<h3>고객센터 등록</h3>
			<form action="<%= contextPath %>insert.no" method="post" enctype="multipart/form-data">
				<table width="800">
					<tr>
						<td colspan="4">
							<!-- 선택할 때 바뀌는거 confirm 한번 띄우기 -->
							<button class="btn btn-primary" onclick="<%= contextPath %>/insertForm.no?type=notice">공지사항</button>
							<button class="btn btn-secondary" onclick="<%= contextPath %>/insertForm.no?type=faq">FAQ</button>
						</td>
					</tr>
					<tr>
						<th>구분</th>
						<td><select name="category">
								<% for(Category c : category){ %>
									<option value="<%= c.getCategoryNo() %>"><%= c.getCategoryContent() %></option>
								<% } %>
							</select></td>
						<th>제목</th>
						<td><input type="text" name="title" required></td>
					</tr>
					<tr>
						<th>본문</th>
						<td colspan="3"><input type="file" name="attachment"></td>
					</tr>
					<tr>
						<td colspan="4">
							<script type="text/javascript" src="<%= contextPath %>/resource/js/service/HuskyEZCreator.js" charset="utf-8"></script>
							<textarea name="ir1" id="ir1" rows="10" cols="100" required>test</textarea>
							<script type="text/javascript">
								var oEditors = [];
								nhn.husky.EZCreator.createInIFrame({
								 oAppRef: oEditors,
								 elPlaceHolder: "ir1",
								 sSkinURI: "<%= contextPath %>/resource/SmartEditor2Skin.html",
								 fCreator: "createSEditor2"
								});
								
								function submitContents(elClickedObj) {
									oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
									if(document.getElementById("ir1").value.length>4000){
										alert('4000 Byte 까지만 작성 가능합니다. 확인해주세요.');
										return false;
									}
									return true;
								}
							</script>
						</td>
					</tr>
				</table>
				<button type="submit" onclick="return submitContents();">등록하기</button>
				<button onclick="console.log(history);">목록이동</button>
			</form>

		</div>
	</body>

	</html>