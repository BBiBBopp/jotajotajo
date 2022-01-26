<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<%@ include file="../common/menubar.jsp" %>
	<div class="content">
	<br><br>
		<h2>투표관리</h2>
		<br><br>
			<form action="" method="post">
				 <label>투표 명칭 : <input type="text"></label> <br><br>
				 <label>투표 시작일  : <input type="date"></label> <br><br>
				 <label>투표 마감일  : <input type="date"></label> <br><br>
	
			   <br><br>
			   
			<div style="width:800px">
				  
		        <table class="table table-bordered">
		            <thead>
		                <tr bgcolor="lightgray">
		                    <th>no.</th>
		                    <th width=120px;>제목</th>
		                    <th width=120px;>장르</th>
		                    <th width=120px;>파일등록</th>
		                    <th>시놉시스</th>
		                </tr>
		            </thead>
		            <tbody>
		                <tr>
		                    <td>1</td>
		                    <td><input type="text" ></td>
		                    <td><input type="text" ></td>
		                    <td><input type="file" ></td>
		                    <td><textarea rows="4" cols=45;></textarea></td>
		                </tr>
		                <tr>
		                    <td>2</td>
		                    <td><input type="text" ></td>
		                    <td><input type="text" ></td>
		                    <td><input type="file" ></td>
		                    <td><textarea rows="4" cols=45;></textarea></td>
		                </tr>
		                <tr>
		                    <td>3</td>
		                    <td><input type="text" ></td>
		                    <td><input type="text" ></td>
		                    <td><input type="file" ></td>
		                    <td><textarea rows="4" cols=45;></textarea></td>
		                </tr>
		                <tr>
		                    <td>4</td>
		                    <td><input type="text" ></td>
		                    <td><input type="text" ></td>
		                    <td><input type="file" ></td>
		                    <td><textarea rows="4" cols=45;></textarea></td>
		                </tr>
		            </tbody>
		        </table>
					<p>
			            <input type="submit" value="등록" class="btn btn-sm btn-primary">
			            
			            <input type="button" value="등록취소" class="btn btn-sm btn-secondary">
			        </p>
		    </div>
	    </form> 
	</div>
	<br><br><br><br>
</body>
</html>