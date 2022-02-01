<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표관리2_2</title>

</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<div class="content">
	
	      <h2>투표 관리</h2> <br><br>
	
		       <form action="/assets/etc/input_test.php" method="post">
				  <label>제목 : <input type="text"></label>
			   <br><br>
				  
			   </form>  
			   <form action="/assets/etc/input_test.php" method="post">
				  <label>장르 : <input type="text"></label>
				  <br><br>
				  
			   </form>     
			   <form action="/assets/etc/input_test.php" method="post">
				  <label>연도 : <input type="text"></label>
				  <br><br>
				  
			   </form>        
		        
	
	                 시놉시스 : <br>
	        <textarea cols="30" rows="10"></textarea> <br>
	        	포스터 등록 <input type="submit" value="파일등록" class="btn btn-sm btn-secondary">
	
	        <br><br><br><br>
	        <p>
	            <input type="submit" value="등록" class="btn btn-sm btn-primary">
	            <button class="btn btn-sm btn-danger">삭제</button>
	            
	            
	            <input type="reset" value="초기화" class="btn btn-sm btn-secondary">
	        </p>
		
	</div>
</body>
</html>