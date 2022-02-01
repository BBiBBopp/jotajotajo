<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.*, com.kh.common.model.vo.PageInfo" %>
<% PageInfo pi=(PageInfo) request.getAttribute("pi"); ArrayList<Notice> list = (ArrayList<Notice>)
request.getAttribute("list");
%>
<% String query="&category=" + request.getAttribute("category"); %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>고객센터-FAQ</title>
	<style>
		.FAQ-one p{
			margin:0px;
			padding:0px 10px;
			height:0;
			overflow: hidden;
    		transition: height 0.5s ease-in;
		}
		.FAQ-one:target p{
			height:100px;
			overflow:auto;
		}
		hr{
			margin:0;
			padding:0;
			border: none;
			border-top: 1px dashed grey;
		}
	</style>
</head>

<body>
	<!--header-->
	<%@ include file="../common/header.jsp" %>
	<div id="menuBar">
		<%@ include file="../common/customerNavigation.jsp" %>
	</div>
	<div id="container">
		<!-- FAQ  -->
		<!-- 예매에 불 들어오고 가장 먼저 접근은 예매로! category 100 -->
		<div class="toolbar">
			<p>더 궁금한 점이 있거나, 이미 문의한 내용과 답변을 확인하려면?</p>
			<a href="#">1:1문의 바로가기</a>
		</div>
		<!-- 전체 FAQ 검색 .. 필요 없나?
		<div class="notice-search">
			<form action="">
				<input type="search"> <input type="submit" value="검색">
			</form>
		</div>-->
		<div class="FAQ-class">
			<ul>
				<li class="actice"><a href="<%=contextPath%>/faq.no?category=100&currentPage=1">
						<img src="" alt="예매"> 예매
					</a></li>
				<li><a href="<%=contextPath%>/faq.no?category=200&currentPage=1"><img src=""
							alt="영화관">
						영화관</a></li>
				<li><a href="<%=contextPath%>/faq.no?category=300&currentPage=1"><img src=""
							alt="회원"> 회원</a>
				</li>
				<li><a href="<%=contextPath%>/faq.no?category=400&currentPage=1"> <img src=""
							alt="홈페이지"> 홈페이지
					</a></li>
				<li><a href="<%=contextPath%>/faq.no?category=500&currentPage=1"> <img src=""
							alt="멤버십"> 멤버십
					</a></li>
				<li><a href="<%=contextPath%>/faq.no?category=600&currentPage=1"> <img src=""
							alt="투표"> 투표
					</a></li>
				<li><a href="<%=contextPath%>/faq.no?category=700&currentPage=1"> <img src=""
							alt="기타"> 기타
					</a></li>
			</ul>
		</div>

		<div class="FAQ-body">
			<% if(list.isEmpty()){ %>
				<div>FAQ가 존재하지 않습니다.</div>
			<% }else{ %>
				<% for(Notice n : list){ %>
					<div class="FAQ-one" id="<%= n.getNoticeNo() %>">
						<h4><a href="#<%= n.getNoticeNo() %>"><%= n.getNoticeTitle() %></a></h4>
						<hr>
						<p><%= n.getNoticeContent() %></p>
					</div>
				<% } %>
			<% } %>
		</div>

		<!-- 페이징 처리 -->
		<ul class="pagination">
			<% if (pi.getStartPage() !=1) { %>
				<li class="page-item"><a class="page-link"
						href="<%=contextPath%>/faq.no?currentPage=<%=pi.getEndPage() - pi.getPageLimit() + 1%><%=query%>">&lt;</a>
				</li>
			<% } %>

			<% for (int i=pi.getStartPage(); i <=pi.getEndPage(); i++) { %>
				<% if (i==pi.getCurrentPage()) { %>
					<li class="page-item active">
						<a class="page-link"><%=i%></a>
					</li>
				<% } else { %>
					<li class="page-item">
						<a class="page-link" href="<%=contextPath%>/faq.no?currentPage=<%=i%><%=query%>">
							<%=i%>
						</a>
					</li>
				<% } %>
			<% } %>

			<% if (pi.getEndPage() !=pi.getMaxPage()) { %>
				<li class="page-item">
					<a class="page-link" href="<%=contextPath%>/faq.no?currentPage=<%=pi.getStartPage() + pi.getPageLimit()%><%=query%>">&gt;</a>
				</li>
			<% } %>
		</ul>
	</div>
	<!--footer-->
	<%@ include file="../common/footer.jsp" %>
</body>

</html>