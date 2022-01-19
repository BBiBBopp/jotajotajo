<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>
<style type="text/css">
	
	body{
		width: 1080px;
		height: 1000px;
		margin: auto;
	}
	.header, footer{
		height: 20%;
	}
	.outer{
		margin-top: 300px;
		width: 100%;
		margin: auto;
		
	}
	.outer>div{
		border: 1px solid rgb(13, 71, 161);
		float: left;
	}
	.membership{
		width: 130px;
		height: 200px;
		border: 1px solid rgb(13, 71, 161);
		border-radius: 10px / 10px;
	}
	
	.membership_div>ul>li {
	    margin: 5px 5px 5px 5px;
	    padding: 0 0 0 0;
	    border : 0;
	    float: left;
	    list-style : none;
	    text-decoration: none;
	}
	.membership_div>h4 {
		margin-left: 50px;
	}
	
	.myPage_area{
		border: 1px solid rgb(13, 71, 161);
		border-radius: 10px / 10px;
		width: 75%;
		height: 300px;
	}
	.menubar{
		border: 1px solid rgb(13, 71, 161);
	}
	.memberInfo{
		height: 300px;
		
	}
	.menubar-area{
		width: 25%;
		height : 100%;
		border: 1px solid rgb(13, 71, 161);
	}
	
	.footer-area{
		margin-top: 800px;
		
	}
	.menubar {
		border-radius: 10px / 10px;
	}
	.menubar>ul {
        list-style-type: none;
        padding: 0px;
        margin: 0px;
        width: 200px;
        
        height: 100%;
        overflow: auto;
        position: fixed;
	}

	.menubar li a {
        text-decoration: none;
        padding: 10px;
        display: block;
        color: black;
        font-weight: bold;
	}

	.menubar li a:hover {
        background: #333;
        color: #fff;
	}
	
	.menubar li a.home {
        width: 200px;
        height: 200px;
		background: rgb(13, 71, 161);
		color: white;
		text-align : center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="header">
		<%@ include file="../../../views/common/header.jsp" %>
	</div>
	<div class="outer">
		<div class="menubar-area">
			<div class="menubar">
				<ul>
					<li><a class="home" href="#">마이페이지</a></li>
					<li><a href="#">멤버쉽</a></li>
					<li><a href="#">회원정보</a></li>
					<li><a href="#">문의내역 확인</a></li>
					<li><a href="#">예매 내역 확인</a></li>
					<li>시네마 헤븐 고객센터</li>
				</ul>
			</div>
		</div>
		<div class="myPage_area">
			멤버 영역
			<div class="memberInfo">
				<div class="content1">
					<table>
						<tr>
							<td>
								<img src="">
							</td>
							<td>
								<p>홍길동님 안녕하세요<br>고객님의 회원등급은 일반입니다.</p>
							</td>
							<th>
								포인트 점수 
							</th>
							<td>
								900p
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="range" name="" id="">
							</td>
							<td>
								다음 등급 남은 점수
							</td>
							<td>
								9100p
							</td>
						</tr>
					</table>
				</div>
				<div class="content2">
				</div>
			</div>
			<div class="membership_div">
				<h4>멤버십 등급 안내</h4>
				<ul>
					<li><div class="membership"></div></li>
					<li><div class="membership"></div></li>
					<li><div class="membership"></div></li>
					<li><div class="membership"></div></li>
					<li><div class="membership"></div></li>
				</ul>
		</div>
		</div>
	</div>
	<br clear="none">
	<div class="footer-area">
		<%@ include file="../../../views/common/footer.jsp" %>
	</div>
</body>
</html>