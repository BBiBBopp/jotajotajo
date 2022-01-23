<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.theater.model.vo.Theater" %>
<%
	Theater t = (Theater)request.getAttribute("t");
%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=23c1c0b4d5942e17ab44a2981c510a63"></script>
<head>
<meta charset="UTF-8">
<title>영화관 상세정보</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/msj_css/04_z02_movietheater_detail.css">
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<%
		String[] traffic = null;
		if(t.getTraffic() != null){
			traffic = t.getTraffic().split("&");
		}
		
		String[] parking = null;
		if(t.getParking() != null){
			parking = t.getParking().split("&");
		}
	%>
	
		<div id="container">
                <div id="content_1">
                    <h1>극장 안내</h1>
                </div>
                <div id="content_2">
                    <div id="theater_back">
                        <div id="theater_pic"><img src="/resources/image/cinema_logo900.jpg"></div>
                        <div id="theater_info">
                            <h3><%= t.getTheaterName() %></h3>
                                <p>
                                    	주소 : <%= t.getAddress() %><br>
                                   	 상영관수 : <%= t.getAuditoriumNum() %><br>
                                 	   전화번호 : <%= t.getPhone() %> <br>
                                 	   좌석수 : <%= t.getSeatNum() %><br>
                                    <!--  60분 전 예매 / 50분전 취소 가능 <br> -->
                                </p>
                        </div>
                    </div>
                </div>
                <br clear="both">
                <div id="content_3">
                    <div>
                        교통안내
                        <hr>
                    </div>
                    <div>
                        <ul>
                        	<% for(int i = 0; i < traffic.length; i++) { %>
                            	<li><%= traffic[i] %></li>
                            <% } %>
                        </ul>
                    </div>
                </div>
                <div id="content_4">
                    <div>위치안내<hr> </div>
                    <div id="map" style="width:1000px; height:400px;">
                       	
                    </div>
                </div>
                <script>
                	// 지도 보여주기
                	var container = document.getElementById('map'); // 지도를 담을 영역의 DOM 레퍼런스
                	var options = {
                			center: new kakao.maps.LatLng(<%= t.getLocation() %>), // 지도의 중심좌표, 위도,경도
                			level: 3 // 지도의 레벨(확대, 축소 정도), 낮은 숫자일수록 확대
                	};
                	var map = new kakao.maps.Map(container, options); // 지도 생성 및 객체 리턴
                	
                	// 마커찍기
                	var markerPosition = new kakao.maps.LatLng(<%= t.getLocation() %>); // 마커가 표시될 위치
                	
                	var marker = new kakao.maps.Marker({
                		position: markerPosition
                	}); // 마커생성
                	
                	marker.setMap(map);
                </script>
                
                
                <br>
                <div id="content_5">
                    <div>주차안내<hr></div>
                    <div>
                        <ul>
                        	<% for(int i = 0; i < parking.length; i++) { %>
                            	<li><%= parking[i]%></li>
                            <% } %>
                        </ul>
                    </div>
                </div>
            </div>
			<br><br><br>
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>