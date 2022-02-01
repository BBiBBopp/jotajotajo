<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.Category" %>
<% 
	String tableType = (String)request.getAttribute("tableType");
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
			<div id="tableType">
				<button type="button" class="btn" onclick="location.href='<%= contextPath %>/insertForm.no?tableType=notice'">공지사항</button>
				<button type="button" class="btn" onclick="location.href='<%= contextPath %>/insertForm.no?tableType=faq'">FAQ</button>
			</div>
			<form action="<%=contextPath %>/insert.no" method="post">
				<table width="800">
					<tr>
						<th>구분</th>
						<td>
							<input type="hidden" name="tableType" value="<%= tableType %>">
							<select name="category">
								<% for(Category c : category){ %>
									<option value="<%= c.getCategoryNo() %>"><%= c.getCategoryContent() %></option>
								<% } %>
							</select>
						</td>
						<th>제목</th>
						<td><input type="text" name="title" required></td>
					</tr>
					<tr>
						<th>본문</th>
					</tr>
					<tr>
						<td colspan="4">
							<script type="text/javascript" src="<%= contextPath %>/resource/js/service/HuskyEZCreator.js" charset="utf-8"></script>
							<textarea name="ir1" id="ir1" rows="10" cols="100" required></textarea>
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
								
								$(function(){
									var $tableType = $('#tableType').children();
									if('<%= tableType %>' == 'notice'){
										$tableType.eq(0).addClass('btn-primary');
										$tableType.eq(1).addClass('btn-secondary');
										console.log('notice');
									}else{
										$tableType.eq(1).addClass('btn-primary');
										$tableType.eq(0).addClass('btn-secondary');
										console.log('faq');
										console.log($tableType.eq(1).text());
									}
								})
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