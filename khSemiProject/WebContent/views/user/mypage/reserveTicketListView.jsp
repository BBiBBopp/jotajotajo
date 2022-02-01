<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.ticket.model.vo.Ticket, com.kh.common.model.vo.PageInfo" %>
<%
	ArrayList<Ticket> rlist = (ArrayList<Ticket>)request.getAttribute("rList");
	ArrayList<Ticket> clist = (ArrayList<Ticket>)request.getAttribute("cList");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매내역 확인</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/user/mypage/reserveList.css">
</head>
<body>

	<%@ include file="../common/header.jsp"%>
	<div class="sub_nav" style="float: left;">
		<%@ include file="../common/subNavigation.jsp"%>
	</div>

	<div class="outer">
		<br>
		<h1 class="title">예매내역 확인</h1>
		<div class="ticket-type">
			<form action="">
				<div class="ticket-head">구분</div>
				<div class="ticket-area">
					<input type="radio" name="ticket" id="now" checked> 예매 내역 
                    <input type="radio" name="ticket" id="past"> 지난 내역
				</div>
				<div class="ticket-check">
					<input type="date" name="" id=""> 
                    <input type="submit" name="select" id="" value="조회하기">
				</div>
			</form>
		</div>
		<table class="ticket-list-area">
			<% if(rlist.isEmpty()) { %>
                <tr>
                    <th style="text-align: center;">조회된 예매 내역이 없습니다.</th>
                </tr>
                <tr>
					<th style="text-align: center;"><button type="button" onclick="<%=contextPath%>/MoView.ti" class="btn btn-outline-primary btn-sm">예매하러 가기</button></th>
                </tr>
                <script>
                	$(function(){
                		$('.ticket-list-area').css({"height": "300px"});
                	})
                </script>
            <% } else { %>
            <% for(Ticket t : rlist) { %>
            <tr>
            	<td>
            		<table class="ticket-list-value">
		               <tr>
		                    <td rowspan="5"><img src="" alt="포스터"></td>
		                    <th colspan="4">
		                        <div class="movie-list">
		                            <div class="movie-list-age"><%= t.getRate() %></div>
		                            <div class="movie-list-title"><%= t.getmName() %></div>
		                        </div>
		                    </th>
		                </tr>
		                <tr>
							<th>관람 일시</th>
							<td><%= t.getRunSch() %></td>
							<th>상영관</th>
							<td><%= t.getAuditoriumName() %></td>
						</tr>
						<tr>
							<th>관람 극장</th>
							<td><%= t.getTheaterName() %></td>
							<th>관람 좌석</th>
							<td><%= t.getSeatNo() %></td>
						</tr>
						<tr style="border-top: 1px solid lightgray;">
							<th>결제 날짜</th>
							<td><%= t.getPayDate() %></td>
							<th>예매 번호</th>
							<td><%= t.getTicketNo() %></td>
						</tr>
						<tr style="padding-bottom: 5px;">
							<th>취소 가능일</th>
							<td><%= t.getCancleDate() %></td>
							<th></th>
							<td></td>
						</tr>
            		</table>
            	</td>
            <tr>
            
            <!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-backdrop="static"
				data-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content" style="border-radius: 3%">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">예매 번호 <%= t.getPayNo() %></h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="reserve-detail-title">
		                        <div class="title-area">
		                            <div class="movie-rate"><%= t.getRate() %></div>
		                            <div class="movie-title"><h2><%= t.getmName() %></h2></div>
		                        </div>
		                        <div class="location-area">
		                            <span><%= t.getTheaterName() %> <%=t.getAuditoriumName() %></span>
		                        </div>
		                        <div class="poster-area">
		                            <img src="" alt="포스터">
		                        </div>
		                    </div>
							<hr>
							<%
								
							%>
		                    <div class="reserve-datail-body">
		                        <div class="reserve-date">
		                            <%= t.getRunDay() %>
		                        </div>
		                        <div class="d-day">
		                            <%= t.getDday() %>
		                        </div>
		                        <div class="reserve-time">
		                            <%= t.getRunTime() %> ~ <%= t.getEndTime() %>
		                        </div>
		                        <div class="seat-area">
		                            	<%= t.getTicketType() %>
		                        </div>
		                        <div class="ticket-no-area">
		                            	티켓번호 <%= t.getTicketNo() %>
		                        </div>
		                    </div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-danger" onclick="cancelConfirm(<%=t.getPayNo()%>)">예매 취소하기</button>
						</div>
					</div>
				</div>
			</div>
			<% } %>
		<% } %>
		</table>
		<br><br>

		<script>
		// 리스트 누르면 모달창 뜸
		$(function(){
			$('.ticket-list-value').click(function(){
				$(this).attr({"data-toggle": "modal",
							  "data-target": "#staticBackdrop"})
			})
		})
		
		function cancelConfirm(payNo){
			// 해당 결제내역에 연결되어있는 모든 티켓 count
			$.ajax({
				url: "countTicket.ti",
				data: {payNo: payNo},
				type: "post",
				success: function(result){
					tCount = result;
				},
				error: function(){
					alert("오류가 발생했습니다. 다시 시도해주세요");
				}
			})
			
			// 한 번 더 물어보기 
			var result = confirm("결제번호 " + payNo + " 에 대한 " + tCount + "장의 예매가 모두 취소됩니다. "
								+ "정말 취소하시겠습니까?");
			
			// 확인 시 예매 취소하고 reload
			if(result) {
				$.ajax({
					url: "cancel.ti",
					data: {payNo: payNo},
					type: "post",
					success: function(result){
						if(result > 0){
							alert("결제가 정상적으로 취소되었습니다.");
							location.reload();
						} else {
							alert("실패!")
						}
					}
				})
			} else {
				// nothing
			}
		}
		</script>

		<!-- 페이징바 -->
      	<div class="paging-area" align="center">

        <!-- 페이징 버튼 -->
        <!-- 페이징바에서 < 를 담당 : 이전페이지 이동 -->
        <% if(currentPage != 1) { %>
           	<button class="btn btn-sm btn-outline-secondary reserve-page-btn" onclick="location.href='<%= contextPath %>/list.ti?currentPage=<%= currentPage - 1 %>'">&lt;</button>
        <% } %>
            
            
        <% for(int i = startPage; i <= endPage; i++) {%>
            <% if(i != currentPage){ %>
          	    <!-- /jsp/list.bo?currentPage=XX -->
                <button class="btn btn-sm btn-outline-secondary reserve-page-btn" onclick="location.href='<%= contextPath %>/list.ti?currentPage=<%= i %>'"><%= i %></button>
            <%} else{ %>
                <button class="btn btn-sm btn-primary" disabled><%= i %></button>
            <% } %>
        <% } %>
            
        <!-- 페이징바에서 > 를 담당 : 다음페이지 이동 -->
        <% if(currentPage != maxPage){ %>
            <button class="btn btn-sm btn-outline-secondary reserve-page-btn" onclick="location.href='<%= contextPath %>/list.ti?currentPage=<%= currentPage + 1 %>'">&gt;</button>
		<% } %>
        </div>

		<br> <br>
		<h1 class="title">예매취소 확인</h1>
		<p class="discription">* 상영일 기준 7일간 취소내역을 확인하실 수 있습니다.</p>

		<table class="list-area table">
			<thead>
				<tr>
					<th width="10%">취소일시</th>
					<th width="30%">영화명</th>
					<th width="15%">극장</th>
					<th width="10%">상영일시</th>
					<th width="10%">취소금액</th>
				</tr>
			</thead>
			<tbody>
			<% if(clist.isEmpty()) { %>
                <tr>
                    <td colspan="5" style="text-align: center;">조회된 취소 내역이 없습니다.</td>
                </tr>
            <% } else { %>
	            <% for(Ticket t : clist) {%>
					<tr>
						<td><%= t.getCancleDate() %></td>
						<td><%= t.getmName() %></td>
						<td><%= t.getTheaterName() %></td>
						<td><%= t.getRunSch() %></td>
						<td><%= t.getPayment() %></td>
					</tr>
				<% } %>
			<% } %>
			</tbody>
		</table>
	</div>

</body>
</html>