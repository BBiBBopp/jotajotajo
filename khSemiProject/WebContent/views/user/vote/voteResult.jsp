<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표결과</title>
<link rel="stylesheet" href="../../../resource/css/user/common/00_stylesheet.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/user/vote/voteResult.css"/>	
	

</head>
<body>

	<%@ include file="../common/header.jsp" %>

		<div id="container">  <br><br><br><br>
            <h2>투표결과</h2>
            
            <br><br><br><br>
            <p style="text-align:center;font-size:28px;">1위 영화는 4월에 상영됩니다!</p>
            <br><br>
            <div id="container_8">
                <img src="resource/image/1328780_2035540_4726.jpg" alt="포스터1" class="poster1">
                
                <p><p style="font-size:20px;">현재순위</p><br><br><br><br><br><br><br><br><br><br><br><br>
                <br><br><br><br><br><br><br><br><br><br><br><br><br>
                
                <span style="font-size:20px;"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                1위 : 영화1 00%</span> </p>
                
            </div>
            <div id="container_9">
            	<div style="display:vertical-align:top;">
					
                	<img src="resource/image/1328780_2035540_4726.jpg" alt="포스터2" class="poster2">
                	<br><br><br><br><br><br><br><br><br>
                	<p style="font-size:20px;">&nbsp;&nbsp;2위 : 영화2 00%</p>
           
           		</div>
				
            	<div id="container_9_1" style="display:inline-block;">    
	                <div style="display:vertical-align:top;">
	                	<img src="resource/image/1328780_2035540_4726.jpg" alt="포스터3" class="poster3">
	               		<p style="font-size:20px;">&nbsp;&nbsp;3위 : 영화3 00%</p>
	            	</div>   
				</div> 
            	<div id="container_9_2" style="display:vertical-align:top;">  
            		<div style="display:vertical-align:top;">
	                	<img src="resource/image/1328780_2035540_4726.jpg" alt="포스터4" class="poster4">
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