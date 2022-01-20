<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표관리2_2</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
</head>
<body>
	
	<div class="form-inline">
      <h2>투표 관리</h2> <br>

        제목  <input type="text" class="form-control"> <br><br>      
        장르  <input type="text" class="form-control"> <br><br>
        연도  <input type="text" class="form-control"> <br><br>

        	시놉시스 : <br>
        <textarea class="form-control" rows="5"></textarea> <br>
        	포스터 등록 <input type="submit" value="파일등록">

        <br><br><br><br>
        <p>
            <button>등록</button> <button>삭제</button> <button>초기화</button>
        </p>
	</div>
</body>
</html>