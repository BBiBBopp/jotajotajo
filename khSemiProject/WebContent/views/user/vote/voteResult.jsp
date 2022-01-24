<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표결과</title>
<link rel="stylesheet" href="../../../resource/css/00_stylesheet.css">
	
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
    #container_9 { 
    	width: 40%; 
    	
    	}

    .poster1{
        width: 400px;
        height: 690px;
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

	#container_9_1{
		height:50%
	}
	container_9_2{
		height:50%
	}
    </style>


</head>
<body>

	<%@ include file="../common/header.jsp" %>

		<div id="container">  <br><br><br><br>
            <h2>투표결과</h2>
            
            <br><br><br><br>
            <p style="text-align:center;font-size:28px;">1위 영화는 4월에 상영됩니다!</p>
            <div id="container_8">
                <img src="resource/css/image/1328780_2035540_4726.jpg" alt="포스터1" class="poster1">
                
                <p><p style="font-size:20px;">현재순위</p><br><br><br><br><br><br><br><br><br><br><br><br>
                <br><br><br><br><br><br><br><br><br><br><br><br><br>
                
                <span style="font-size:20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                1위 : 영화1 00%</span> </p>
                
            </div>
            <div id="container_9">
            	<div style="display:vertical-align:top;">
					
                	<img src="resource/css/image/1328780_2035540_4726.jpg" alt="포스터2" class="poster2">
                	<p style="font-size:20px;">2위 : 영화2 00%</p>
           
           		</div>
				
            	<div id="container_9_1" style="display:inline-block;">    
	                <div style="display:vertical-align:top;">
	                	<img src="resource/css/image/1328780_2035540_4726.jpg" alt="포스터3" class="poster3">
	               		<p style="font-size:20px;">&nbsp;&nbsp;&nbsp;3위 : 영화3 00%</p>
	            	</div>   
				</div> 
            	<div id="container_9_2" style="display:vertical-align:top;">  
            		<div style="display:vertical-align:top;">
	                	<img src="resource/css/image/1328780_2035540_4726.jpg" alt="포스터4" class="poster4">
	               		<p style="font-size:20px;">&nbsp;&nbsp;&nbsp;4위 : 영화4 00%</p>
					</div>
            	</div>   

            </div>

            
        </div>

 	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br>
 	
	<%@ include file="../common/footer.jsp" %>


</body>
</html>