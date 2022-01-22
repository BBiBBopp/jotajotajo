<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 상세정보</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/msj_css/04_z01_movietheater_list.css">
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div id="container">
                <div id="content_1">
                    <h1>극장 안내</h1>
                </div>
                <div id="content_2">
                    <div id="theater_back">
                        <div id="theater_pic"><img src="/resources/image/cinema_logo900.jpg"></div>
                        <div id="theater_info">
                            <h2>CGV 압구정</h2>
                                <p>
                                    	주소 : <br>
                                   	 상영관수 : <br>
                                 	   전화번호 : <br>
                                 	   좌석수 : <br>
                                    60분 전 예매 / 50분전 취소 가능 <br>
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
                            <li>지하철</li>
                            <li>3호선 압구정역 3번 출구 이용</li>
                            <li>버스</li>
                            <li>압구정역 3번 출구 (정류장 번호: 23-429)</li>
                            <li>간선버스 : 147, 148</li>
                            <li>압구정역 4번 출구 (정류장 번호: 23-105)</li>
                            <li>간선버스 : 147,148,240</li>
                            <li>현대아파트 (정류장 번호: 23-148)</li>
                            <li>간선버스: 143, 148, 240, 301, 342, 362, 440, 472</li>
                            <li>지선버스: 2411, 3011, 4318, 4412, 4419</li>
                            <li>현대아파트 (정류장 번호 : 23-149)</li>
                            <li>간선버스: 143, 148, 240, 301, 342, 362, 472</li>
                            <li>지선버스: 2411, 3011, 4318, 4412, 4419</li>
                        </ul>
                    </div>
                </div>
                <div id="content_4">
                    <div>위치안내</div>
                    <div>
                        지도지도지도지도<br><br><br><br>
                        <br><br><br><br>
                        <br><br><br><br>
                        <br><br><br>
                    </div>
                </div>
                <div id="content_5">
                    <div>주차안내</div>
                    <div>
                        <ul>
                            <li>지하철</li>
                            <li>3호선 압구정역 3번 출구 이용</li>
                            <li>버스</li>
                            <li>압구정역 3번 출구 (정류장 번호: 23-429)</li>
                            <li>간선버스 : 147, 148</li>
                            <li>압구정역 4번 출구 (정류장 번호: 23-105)</li>
                            <li>간선버스 : 147,148,240</li>
                            <li>현대아파트 (정류장 번호: 23-148)</li>
                            <li>간선버스: 143, 148, 240, 301, 342, 362, 440, 472</li>
                            <li>지선버스: 2411, 3011, 4318, 4412, 4419</li>
                            <li>현대아파트 (정류장 번호 : 23-149)</li>
                            <li>간선버스: 143, 148, 240, 301, 342, 362, 472</li>
                            <li>지선버스: 2411, 3011, 4318, 4412, 4419</li>
                        </ul>
                    </div>
                </div>
            </div>
	
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>