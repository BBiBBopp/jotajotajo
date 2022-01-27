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
<title>관리자 - 영화관 수정</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/admin/theater/05_z04_admin_movietheater_update.css">
</head>
<body>
		<div id="container">
			<div class="menutab">
       	 		<%@ include file="../common/menubar.jsp" %>
    		</div>
    		<div id="content_wrap">
    		<form action="<%= contextPath%>/atUpdate.th" method="post">
            	<div id="content_1">
                	<div id="title">
                    	<h2>영화관 수정</h2>
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
                            	영화관 로고 <br>
                        	</div>
                        	<div id="input_tag">
                        		<input type="hidden" name="theaterNo" value="<%= ta.getTheaterNo()%>">
                            	<input type="text" name="theaterName" value="<%= ta.getTheaterName()%>"><br>
                            	<input type="text" name="address" value="<%= ta.getAddress() %>"><br>
                            	<input type="text" name="auditoriumNum" value="<%= ta.getAuditoriumNum()%>"><br>
                            	<input type="text" name="phone" value="<%= ta.getPhone()%>"><br>
                            	<input type="text" name="seatNum" value="<%= ta.getSeatNum()%>"><br>
                            	<input type="text" name="theaterImg" value="<%= ta.getTheaterImg()%>"><br>
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
                                <td><input type="text" name="auditoriumName" value="<%= ta.getAuditoriumName()%>">관</td>
                                <td><input type="text" name="auditoriumSeatNum" value="<%= ta.getAuditoriumSeatNum()%>">석</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <br clear="both">
            </div>
            <div id="content_3">
                <hr>
                <div id="ex_info">
                    위치안내 &emsp;<input type="text" name="location" value="<%= ta.getLocation() %>" placeholder="위도, 경도를 ','를 포함하여 작성해주세요." style="width:380px;"></input><br><br>
                    교통안내 &emsp;<textarea name="traffic" style="resize: none; height:300px;"><%= ta.getTraffic() %></textarea><br><br>
                    주차안내 &emsp;<textarea name="parking" style="resize: none; height:200px;"><%= ta.getParking() %></textarea><br><br>
                </div>
            </div>
            <div id="content_4">
                <div>
                    <button type="submit">수정하기</button>
                    <button>삭제하기</button>
                </div>
            </div>
            </form>
        </div>
    	</div>
	
	
	
	
</body>
</html>