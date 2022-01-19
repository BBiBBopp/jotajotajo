<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표결과</title>
	
	<style>
	    div {
        /* border: 1px solid black; */
        box-sizing: border-box;
    }

    /* #wrap>div { width: 100%; } */

    #header { height: 10%; }
    /* #navi_area {height: 10%;} */
    #footer { height: 10%; }
    #container { height: 70%; }

    #container>div { 
        /* height: 100%; */
        float: left;
       
    }

    #container_8 { 
        width: 60%; 
    }
    #container_9 { width: 40%; }

    .poster1{
        width: 400px;
        height: 620px;
        float: right;
        margin-top: 0px;

    }
    .poster2 {
        width: 120px;
        height: 200px;
        float: left;
        margin-top: 0px;
        margin-left: 10px;
    }
    .poster3{
        width: 120px;
        height: 200px;
        margin-right: 300px;
        margin-left: 10px;
        margin-top: 10px;
    }   
    .poster4{
        width: 120px;
        height: 200px;
        /* float: left; */
        
       margin-top: 8px;
       margin-left: 10px;
    }


    </style>


</head>
<body>

	<%@ include file="../common/header.jsp" %>

		<div id="container"> <br><br> <br> <br> <br> <br>  
            <h2>투표결과</h2>
            
            <div id="container_8">
                
                <img src="resource/image/1328780_2035540_4726.jpg" alt="포스터1" class="poster1">
                
            </div>
            <div id="container_9">
                <img src="resource/image/1328780_2035540_4726.jpg" alt="포스터2" class="poster2">
                
                <img src="resource/image/1328780_2035540_4726.jpg" alt="포스터3" class="poster3">
                <img src="resource/image/1328780_2035540_4726.jpg" alt="포스터4" class="poster4">
            
            </div>
            
        </div>


	<%@ include file="../common/footer.jsp" %>


</body>
</html>