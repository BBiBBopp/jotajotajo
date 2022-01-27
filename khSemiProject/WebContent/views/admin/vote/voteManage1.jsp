<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표관리1</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

	<div class="content">
        <h2>투표 관리</h2> <br>
        <div style="width:800px">
        <p align="right"><button class="btn btn-sm btn-primary">등록</button>
        &nbsp;&nbsp;<button class="btn btn-sm btn-primary">수정</button> 
        &nbsp;&nbsp;<button class="btn btn-sm btn-danger">삭제</button></p>
        <table class="table table-bordered">
            <thead>
                <tr bgcolor="lightgray">
                    <th>no.</th>
                    <th>월</th>
                    <th>처리상태</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>4</td>
                    <td>2월 투표</td>
                    <td align="center">
                    	<a href="<%=contextPath %>/manage.vot1_2_1" class="btn btn-sm btn-primary">진행중</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>1월 투표</td>
                    <td align="center"><button>완료</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>12월 투표</td>
                    <td align="center"><button>완료</button></td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>11월 투표</td>
                    <td align="center"><button>완료</button></td>
                </tr>
            </tbody>
        </table>
        </div>
    </div>
</body>
</html>