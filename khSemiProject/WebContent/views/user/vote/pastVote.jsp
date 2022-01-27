<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이전 투표 목록</title>
<link rel="stylesheet" href="../../../resource/css/00_stylesheet.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/vote/pastVote.css"/>
	<style>


    </style>


</head>
<body>
	
	<%@ include file="../common/header.jsp" %>

		<div id="container">
                <div class="container_5">
                   <br><br><br><br>
                    <p style="font-size:30px;">이전투표목록</p> <br><br>
                    <hr size="4"  color="gray">
                    <table>
                    	<tr>
		                    <img src="resource/image/52ef372732ec3bbee5fb9159477006ad.jpg" alt="포스터1" class="poster1"
		                    style="vertical-align:middle;">
		                    <span style="margin-top:20px;margin-left:160px;font-size:18px;">1월 투표결과</span>	
                    	</tr>
					</table>
                </div>
                <div class="container_6">
                    <hr size="4"  color="gray">
                    <table>
                    	<tr>
		                    <img src="resource/image/52ef372732ec3bbee5fb9159477006ad.jpg" alt="포스터2" class="poster1"
		                    style="vertical-align:middle;">
		                    <span style="margin-top:20px;margin-left:160px;font-size:18px;">12월 투표결과</span>	
                    	</tr>
					</table>
                </div>
                <div class="container_7">
                    <hr size="4"  color="gray">
                    <table>
                    	<tr>
		                    <img src="resource/image/52ef372732ec3bbee5fb9159477006ad.jpg" alt="포스터3" class="poster1"
		                    style="vertical-align:middle;">
		                    <span style="margin-top:20px;margin-left:160px;font-size:18px;">11월 투표결과</span>	
                    	</tr>
					</table>
                    <hr size="4"  color="gray">
                </div>
 
            </div>

	<br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="../common/footer.jsp" %>
	
	
</body>
</html>