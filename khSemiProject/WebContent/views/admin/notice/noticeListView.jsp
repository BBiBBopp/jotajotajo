<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.*" %>
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<% 
	String query ="";
	String mapping = "";
	if(request.getAttribute("type") == null){
		mapping = "adminList.no";
	}else{
		query = "&type="+request.getAttribute("type")+"&keyword="+(String)request.getAttribute("keyword");
		mapping = "adminSearch.no";
	}
%>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>관리자 - 공지 목록</title>
	</head>

	<body>
		<div id="admin-menu">
			<%@ include file="../common/header.jsp" %>
		</div>
		<div id="container">
			<br>
			<h3>공지사항 목록</h3>
			<div id="notice-menu">
				<button type="button" class="btn btn-primary" onclick="location.href='<%= contextPath %>/insertForm.no?type=notice'">
					공지 추가
				</button>
				<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteForm">
				 	공지 삭제
				</button>
				
				<div class="notice-search">
                    <form action="adminSearch.no" method="get">
                    	<input type="hidden" name="currentPage" value="1">
                        <select name="type">
                            <option value="title">제목</option>
                            <option value="content">내용</option>
                        </select>
                        <input type="search" name="keyword">
                        <input type="submit" value="검색">
                    </form>
                </div>
                
                
				<!-- Modal : DeleteForm -->
				<div class="modal delete-form" id="deleteForm">
				  <div class="modal-dialog">
				    <div class="modal-content">
				
				      <!-- Modal Header -->
				      <div class="modal-header">
				        <h4 class="modal-title">공지사항 삭제</h4>
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body">
				      	<ul id="deleteList"></ul>
				        	삭제하시겠습니까? 
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				        <button id="deleteSubmit" type="submit" class="btn btn-danger" data-dismiss="modal">삭제</button>
				      </div>
				    </div>
				  </div>
				</div>
				
				
			</div>

			<!-- 목록 테이블 영역 -->
			<div id="notice-body">
				<table>
					<thead>
						<tr>
							<th><input type="checkbox" id="checkAll"></th>
							<th>No.</th>
							<th>구분</th>
							<th>제목</th>
							<th>내용</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						<% if(list == null || list.isEmpty()){ %>
	                        	<tr><td>공지사항이 존재하지 않습니다.</td></tr>
	                    <% }else{ %>
							<% for(Notice n : list){ %>
									<tr>
									<td><input type="checkbox" class="row" value="<%= n.getNoticeNo() %>"></td>
									<td><%= n.getNoticeNo() %></td>
									<td><%= n.getNoticeCategory() %></td>
									<td><%= n.getNoticeTitle() %></td>
									<td><%= n.getNoticeContent() %></td>
									<td><%= n.getNoticeDate() %></td>
								</tr>
							<% } %>
						<% } %>
					</tbody>
				</table>
			</div>
			<!-- 페이징 처리 -->
            <ul class="pagination">
            <% if(pi != null){ %>
	            <% if( pi.getStartPage() != 1 ){ %>
	                <li class="page-item"><a class="page-link" href="<%= contextPath %>/<%= mapping %>?currentPage=<%= pi.getEndPage()-pi.getPageLimit()+1 %><%= query %>">&lt;</a></li>
	            <% } %>
	            
	            <% for(int i = pi.getStartPage(); i<=pi.getEndPage();i++){ %>
	            	<% if(i == pi.getCurrentPage()){ %>
	                	<li class="page-item active"><a class="page-link"><%= i %></a></li>
	                <% }else{ %>
	                	<li class="page-item"><a class="page-link" href="<%= contextPath %>/<%= mapping %>?currentPage=<%= i %><%= query %>"><%= i %></a></li>
	            	<% } %>
	            <% } %>
	            
	            <% if(pi.getEndPage()!= pi.getMaxPage()){ %>
	                <li class="page-item"><a class="page-link" href="<%= contextPath %>/<%= mapping %>?currentPage=<%= pi.getStartPage()+pi.getPageLimit() %><%= query %>">&gt;</a></li>
	            <% } %>
            <% } %>
            </ul>
		</div>
		<script>
			$(function(){
				//'전체' 체크하면 전체 불 들어오고 끄면 다 꺼지기. 하나씩 다 눌러서 다 채울때 불 들어오거나 하나라도 체크해제하면 불 꺼지는거 구현 안함
				$('#checkAll').on('change', function () {
	                if ($(this).prop('checked'))
	                    $('.row').prop('checked', true);
	                else
	                    $('.row').prop('checked', false);
	            })
	            
	       		//상세조회 tr 누를 시 상세조회 들어가기!! 단 체크박스 제외
	       		$('#notice-body tbody>tr>td').click(function(){
	       			var loc = $(this).parent().children('td').eq(1).text();
	       			if($(this).parent().children().eq(0).text()!=$(this).text())
		       			location.href='<%= contextPath %>/updateForm.no?nno='+loc+'&type=notice';
	       		})
	       		
	       		//체크가 될 경우 modal에 삭제 목록에 들어감. 해제될 경우 사라짐
	       		$('.row').change('checked', function(){
	       			var deleteTitle = $(this).parent().siblings().eq(0).text();
	       			if ($(this).prop('checked'))
	       				$('#deleteList').append('<li class='+deleteTitle+'>'+deleteTitle+'</li>');
	       			else
	       				$('#deleteList').find('.'+deleteTitle).remove();
	       		})
	       		
	       		//삭제modal-삭제 누르면 delete.no에 리스트로 전달
	       		
	       		$('#deleteSubmit').click(function(){
	       			var deleteList = [];
	       			for(var i = 0; i < $('#deleteList>li').length; i++){
	       				deleteList.push($('#deleteList').children().eq(i).text());
	       			}
	       			location.href='<%= contextPath %>/delete.no?list='+deleteList;
	       		})
	       		
			})	
		</script>
	</body>

	</html>