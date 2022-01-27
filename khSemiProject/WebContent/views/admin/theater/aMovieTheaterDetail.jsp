<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.theater.model.vo.TheaterAuditorium" %>
<%
	TheaterAuditorium ta = (TheaterAuditorium)request.getAttribute("ta");
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 영화관 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/admin/theater/05_z02_admin_movietheater_detail.css">
</head>
<body>

	<script>
			var msg = "<%= alertMsg%>"
			if(msg != "null"){ // 성공, 경고 메세지 문구가 담겨있을 경우
				alert(msg);
			
			<% session.removeAttribute("alertMsg"); %>
			// 해당 페이지가 로딩 될 때마다 뜨는 alert제거			
			}
		</script>
		
		
		<div id="container">
			<div class="menutab">
       	 		<%@ include file="../common/menubar.jsp" %>
    		</div>
    		<div id="content_wrap">
            	<div id="content_1">
                	<div id="title">
                    	<h2>영화관 상세</h2>
            		</div>
            	</div>
            	<div id="content_2">
                	<div class="input_info">
                    	<div id="movietheater_info">
                        	<div id="input_ment">
                           	 영화관명 <br>
                            	주소 <br>
                            	상영관수 <br>
                            	전화번호 <br>
                            	좌석수 <br>
                            	영화관 로고<br>
                        	</div>
                            	
                        	<div id="input_tag">
                            	<%= ta.getTheaterName() %><br>
                            	<%= ta.getAddress() %><br>
                            	<%= ta.getAuditoriumNum() %><br>
                            	<%= ta.getPhone() %><br>
                            	<%= ta.getSeatNum() %><br>
                            	<%= ta.getTheaterImg() %><br>
                            	(1: CGV / 2: 롯데시네마 / 3: 메가박스)
                        	</div>
                    	</div>
                    	<br clear="both">
                	</div>
                	<div>
                    <table class=table>
                        <thead>
                            <tr>

                                <th>상영관명</th>
                                <th>좌석수</th>
                            </tr>
                        </thead>
                        <tbody>
							
                            <tr>
                                <td><%= ta.getAuditoriumName() %>관</td>
                                <td><%= ta.getAuditoriumSeatNum() %>석</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                
                <br clear="both">
            </div>
            <div id="content_3">
                <hr>
                <div id="ex_info">
                    위치안내 &emsp;<%= ta.getLocation() %><br><br>
                    교통안내 &emsp;<pre><%= ta.getTraffic()%></pre>
                    주차안내 &emsp;<pre><%= ta.getParking()%></pre>
                </div>
            </div>
            <div id="content_4">
                <div>
                	<form action="<%= contextPath%>/atUpdateForm.th">
                		<input type="hidden" name="tno" value=<%= ta.getTheaterNo() %>>
	                    <button type="submit">수정하기</button>
                	</form>
                	<form action="<%= contextPath%>/atDelete.th">
                		<input type="hidden" name="tno" value=<%= ta.getTheaterNo() %>>
	                    <button type="submit">삭제하기</button>
                	</form>
                </div>
            </div>
        </div>
    	</div>
	
	
	
	
</body>
</html>