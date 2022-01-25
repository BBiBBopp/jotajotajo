<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member, java.util.ArrayList, com.kh.theater.model.vo.Theater, com.kh.common.model.vo.PageInfo" %>
<%
	ArrayList<Theater> theaterList = (ArrayList<Theater>)session.getAttribute("theaterList");
	
	PageInfo pi = (PageInfo)request.getAttribute("pi");

	// 페이징 바 만들 때 필요한 변수 미리 세팅
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 영화관 목록</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/admin/theater/05_z01_admin_movietheater.css">
</head>
<body>
	<div id="container">
		<div class="menutab">
        <%@ include file="../common/menubar.jsp" %>
    	</div>
		<div id="content_wrap">
            <div id="content_1">
                <div id="title">
                    <h2>등록된 영화관</h2>
                </div>
                    <div id="add_delete_btn_div">
                        <button>영화관 추가</button>
                        <button>영화관 삭제</button>
                    </div>
            </div>
            <div id="content_2">
                <table border="1" class="table">
                    <thead>
                        <tr>
                            <th><input type="checkbox"></th>
                            <th>No.</th>
                            <th>영화관명</th>
                            <th>주소</th>
                            <th width=120px>전화번호</th>
                            <th>등록일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <% if(theaterList.isEmpty()) { %>
                    	<tr>
                    		<td colspan="5">조회된 게시글이 없습니다.</td>
                    	</tr>
                    <% } else { %>
						<% for(Theater t : theaterList) { %>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td><%= t.getTheaterNo() %></td>
                            <td><%= t.getTheaterName() %></td>
                            <td><%= t.getAddress() %></td>
                            <td><%= t.getPhone() %></td>
                            <td><%= t.getUploadDate().substring(0, 10) %></td>
                        </tr>
                        <% } %>
                    <% } %>
                    </tbody>
                </table>
            </div>
            <br>
            
            <script>
            	$(function(){
					$(".table>tbody>tr").click(function(){
						
						location.href="<%= contextPath%>/atDetail.th?tno=" + $(this).children().eq(0).text();
					})
            	})
            </script>
            
            
            <div id="content_3" >
                <div id="paging_btn" class="paging-area">
                    <!-- 페이징 버튼 -->
			<% if(currentPage != 1) { %>
            	<button onclick="location.href='<%= contextPath%>/atList.th?currentPage=<%= currentPage - 1 %>'">&lt;</button>
			<% } %>
	

			<%for(int i = startPage; i <= endPage; i++) { %>
				<% if( i != currentPage){ %>
            		<button onclick="location.href='<%= contextPath%>/atList.th?currentPage=<%= i %>'"><%= i %></button>
				<% }else{ %>
	            	<button disabled><%= i %></button>
            	<% } %>
            <% } %>
            
            <!-- 페이징바에서 > 를 담당 : 다음페이지 이동 -->
            <% if(currentPage != maxPage) { %>
            	<button onclick="location.href='<%= contextPath%>/atList.th?currentPage=<%= currentPage + 1 %>'">&gt;</button>
			<% } %>
        	</div>
          </div>
        </div>
            
        </div>
</body>
</html>