<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/* subNavigation영역 */
.sub_nav {
   float:left;
   width: 400px;
   height: auto;
}
.membershipTier{
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
</style>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/mypage/reserveList.css">
</head>
<body>

	<%@ include file="../common/header.jsp"%>
	<div class="sub_nav">
		<%@ include file="../common/subNavigation.jsp"%>
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
					<li><div class="membershipTier"></div></li>
					<li><div class="membershipTier"></div></li>
					<li><div class="membershipTier"></div></li>
					<li><div class="membershipTier"></div></li>
					<li><div class="membershipTier"></div></li>
				</ul>
			</div>
		</div>
	
	<div class="footer-area">
		<%@ include file="../common/footer.jsp" %>
	</div>
</body>
</html>