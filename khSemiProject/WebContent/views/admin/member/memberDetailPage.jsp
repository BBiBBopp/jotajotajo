<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>

<style type="text/css">
	.menubar>ul {
        list-style-type: none;
        padding: 0px;
        margin: 0px;
        width: 200px;
        background: rgb(13, 71, 161);
        height: 100%;
        overflow: auto;
        position: fixed;
	}

	.menubar li a {
        text-decoration: none;
        padding: 10px;
        display: block;
        color: white;
        font-weight: bold;
	}

	.menubar li a:hover {
        background: #333;
        color: #fff;
	}
	
	.menubar li a.home>img {
        width: 180px;
        height: 160px;
	}
	
	.content {
        margin-left: 220px;
        
	}
    #temporaryEmailBtn , .btn-area>input, #searchBtn{
        width: 160px;
        height: 40px;
        background: rgb(13, 71, 161);
        color: white;
    }
    .page-area a{
        width: 40px;
        height: 40px;
        background: rgb(13, 71, 161);
        color: white;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="outer">
        <div class="menubar">
            <ul>
                <li><a class="home" href="#"><img src="<%=request.getContextPath() %>/resource/image/cinema_logo900.jpg" alt="시네마헤븐"></a></li>
                <li><a href="#">회원관리</a></li>
                <li><a href="#">영화 목록 관리</a></li>
                <li><a href="#">영화관 관리</a></li>
                <li><a href="#">고객센터</a></li>
                <li><a href="#">투표관리</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="container">
                <br>
                <h2>회원 수정</h2>
                
                <form>
                    <table class="table table-hover">
                        <tbody>
                            <tr>
                                <th>아이디</th>
                            </tr>
                                <td>user01</td>
                            <tr>
                            <tr>
                                <td>
                                    <button id="temporaryEmailBtn">임시 비밀번호 발급</button>
                                </td>
                            </tr>
                            <tr>
                                <th>이름</th>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="memberId" id="memberId" value="홍길동">
                                </td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="email" id="email" value="user01@naver.com">
                                </td>
                            </tr>
                            <tr>
                                <th>전화번호</th>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="phone" id="phone" value="010-1111-2222">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="btn-area">
                        <input type="reset" value="취소">
                        <input type="submit" value="수정">
                    </div>
                </form>             
            </div>
        </div>
    </div>
    
    </div>

<div class="cd1">
  

</div>
</body>
</html>