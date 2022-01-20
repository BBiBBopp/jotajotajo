<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이전 투표 목록 관리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
        <h2>이전투표목록</h2> <br>
        <p align="right"><button>등록</button> <button>수정</button> <button>삭제</button></p>
        <table class="table table-bordered">
            <thead>
                <tr bgcolor="lightgray">
                    <th>no.</th>
                    <th>파일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2월 투표결과</td>
                    <td></td>
                </tr>
                <tr>
                    <td>1월 투표결과</td>
                    <td></td>
                </tr>
                <tr>
                    <td>12월 투표결과</td>
                    <td></td>
                </tr>
                <tr>
                    <td>11월 투표결과</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <br>
    <P align="right">포스터 등록 <input type="submit" value="파일 등록"></P>
    </div>
	
</body>
</html>