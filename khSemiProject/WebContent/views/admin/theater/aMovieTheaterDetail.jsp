<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.theater.model.vo.TheaterAuditorium" %>
<%
TheaterAuditorium ta = (TheaterAuditorium)request.getAttribute("ta");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 영화관 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/admin/theater/05_z02_admin_movietheater_detail.css">
</head>
<body>
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
                        	</div>
                        	<div id="input_tag">
                            	<%= ta.getTheaterName() %><br>
                            	<%= ta.getAddress() %><br>
                            	<%= ta.getAuditoriumNum() %><br>
                            	<%= ta.getPhone() %><br>
                            	<%= ta.getSeatNum() %><br>
                        	</div>
                    	</div>
                    	<br clear="both">
                    	<div id="movietheater_file">
                        	<p>영화관 관련 이미지</p>
                        	<input type="file"  name="theaterImg">
                        	<p>클릭하면 열림</p>
                    	</div>
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
                                <td><%= ta.getSeatNum() %>석</td>
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
                    <button><a href="">수정하기</a></button>
                    <button>삭제하기</button>
                </div>
            </div>
        </div>
    	</div>
	
	
	
	
</body>
</html>