<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이전 투표 목록</title>
<link rel="stylesheet" href="../../../resource/css/00_stylesheet.css">

	<style>
    div {
            /* border: 1px solid black; */
            box-sizing: border-box;
        }

    .wrap>div { width: 100%; }

    #header { height: 10%; }
    /* #navi_area {height: 10%;} */
    #footer { height: 10%; }
    #container { height: 70%; }

    .container_5 { 
        height: 45%; 
        margin-top: 0px;
    }
    .container_6 { height: 20%; }
    .container_7 { height: 20%; }

    .container{
    	margin-top : -100px;
       /* width: 900px; */
        border: 1px solid black;
        display: inline-block;
        position: relative;
    }


    .poster1{
        width: 430px;
        height: 200px;
       /* float: right; */
        margin-right: 100px;
        margin-top: auto;
        
    }

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