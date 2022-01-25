<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.Category, com.kh.notice.model.vo.Notice" %>
<% 
	String type = (String)request.getAttribute("type");
	ArrayList<Category> category = (ArrayList<Category>)request.getAttribute("category");
	Notice n = (Notice)request.getAttribute("n");
%>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>관리자 - 공지/FAQ 수정</title>
	</head>

	<body>
		<div id="admin-menu">
			<%@ include file="../common/header.jsp" %>
		</div>
		<div id="container">
			<br>
			<h3>고객센터 수정</h3>
			<div id="type">
				<button type="button" class="btn" onclick="location.href='<%= contextPath %>/updateForm.no?type=notice&nno=<%= n.getNoticeNo() %>'">공지사항</button>
				<button type="button" class="btn" onclick="location.href='<%= contextPath %>/updateForm.no?type=faq&nno=<%= n.getNoticeNo() %>'">FAQ</button>
			</div>
			<form action="<%= contextPath %>/update.no" method="post" enctype="multipart/form-data">
				<table width="800">
					<tr>
						<th>구분</th>
						<td><select name="category">
								<% for(Category c : category){ %>
									<% if(n.getNoticeCategory().equals(c.getCategoryContent())){ %>
										<option selected value="<%= c.getCategoryNo() %>"><%= c.getCategoryContent() %></option>
									<% }else{ %>
										<option value="<%= c.getCategoryNo() %>"><%= c.getCategoryContent() %></option>
									<% } %>
								<% } %>
							</select></td>
						<th>제목</th>
						<td><input type="text" name="title" required value="<%= n.getNoticeTitle() %>"></td>
					</tr>
					<tr>
						<th>본문</th>
						<td colspan="3"><input type="file" name="attachment"></td>
					</tr>
					<tr>
						<td colspan="4">
							<script type="text/javascript" src="<%= contextPath %>/resource/js/service/HuskyEZCreator.js" charset="utf-8"></script>
							<textarea name="ir1" id="ir1" rows="10" cols="100" required><%= n.getNoticeContent() %></textarea>
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
									var $type = $('#type').children();
									if('<%= type %>' == 'notice'){
										$type.eq(0).addClass('btn-primary');
										$type.eq(1).addClass('btn-secondary');
									}else{
										$type.eq(1).addClass('btn-primary');
										$type.eq(0).addClass('btn-secondary');
									}
								})
							</script>
						</td>
					</tr>
				</table>
				<button type="submit" onclick="return submitContents();">수정하기</button>
				<button type="button" onclick="history.back();">목록이동</button>
			</form>

		</div>
	</body>

	</html>