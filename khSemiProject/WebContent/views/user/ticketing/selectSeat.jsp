<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>좌석 선택</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/user/ticketing/seat.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="../common/header.jsp" %>
		<div id="container">
			<div class="select-container">
				<div class="select-wrapper">
					<div class="select-title">인원/좌석</div>
					<div class="select-seat-container">
						<div class="select-seat-number-container">
							<div class="select-seat-number-wrapper">
								<div class="select-seat">
									<div class="select-seat-age">일반</div>
									<div class="select-seat-number">
										<ul class="select-seat-ul select-seat-ul-normal">
											<li class="select-number-normal ">0</li>
											<li class="select-number-normal">1</li>
											<li class="select-number-normal">2</li>
											<li class="select-number-normal">3</li>
											<li class="select-number-normal">4</li>
											<li class="select-number-normal">5</li>
											<li class="select-number-normal">6</li>
											<li class="select-number-normal">7</li>
											<li class="select-number-normal">8</li>
										</ul>
									</div>
								</div>
								<div class="select-seat">
									<div class="select-seat-age">청소년</div>
									<div class="select-seat-number">
										<ul class="select-seat-ul select-seat-ul-teen">
											<li class="select-number-teen">0</li>
											<li class="select-number-teen">1</li>
											<li class="select-number-teen">2</li>
											<li class="select-number-teen">3</li>
											<li class="select-number-teen">4</li>
											<li class="select-number-teen">5</li>
											<li class="select-number-teen">6</li>
											<li class="select-number-teen">7</li>
											<li class="select-number-teen">8</li>
										</ul>
									</div>
								</div>
								<div class="select-seat">
									<div class="select-seat-age">우대</div>
									<div class="select-seat-number">
										<ul class="select-seat-ul  select-seat-ul-old">
											<li class="select-number-old">0</li>
											<li class="select-number-old">1</li>
											<li class="select-number-old">2</li>
											<li class="select-number-old">3</li>
											<li class="select-number-old">4</li>
											<li class="select-number-old">5</li>
											<li class="select-number-old">6</li>
											<li class="select-number-old">7</li>
											<li class="select-number-old">8</li>
										</ul>
									</div>
								</div>

							</div>
							<div class="reserve-number-wrapper">
								<div class="reserve-number-title">선택된 좌석 수</div>
								<div class="reserve-number">0</div>
							</div>
						</div>
						<div class="select-seat-information">
							<div class="selected-movie">라라랜드</div>
							<div class="select-seat-information-wrapper">
								<div class="select-theater-place selected-theater-place-info">강남점</div>
								<div class="select-theater-place selected-theater-place-info">3관
									8층</div>
								<div class="select-theater-place">
									<span>남은좌석</span><span class="remain-seats">152</span>/<span
										class="all-seats">172</span>
								</div>

							</div>
							<div class="select-theater-date">
								<div class="theater-date">2022.01.01(월)</div>
								<div class="theater-time">18:20</div>
							</div>
							<div class="selected-seats-wrapper">
								<span class="selected-seats-title">좌석번호</span> <span
									class="selected-seats">선택한 좌석이 없습니다.</span>
							</div>
							<div class="ticket-price-wrapper">
								<div class="ticket-price-title">가격</div>
								<div class="ticket-price">0원</div>
							</div>
							<form action="<%=contextPath%>/pay.ti" class="seatForm" method="post">
								<input type="hidden" class="title" name="title" value="라라랜드"> 
								<input type="hidden" class="selectedTheater" name="selectedTheater" value="강남점">
								<input type="hidden" class="reserveDate" name="movieDate" value="2022/01/01">
								<input type="hidden" class="runningTime" name="runningTime" value="2:30">
								<input type="hidden" class="movieAge" name="movieAge" value="15">
								<!-- 티켓의수(선택한 좌석) -->
								<input type="hidden" class="ticketNumber" name="ticketNumber" value="3">
								<input type="hidden" class="selectedSeat" name="selectedSeat" value="2">
								<!-- 결제 정보 -->
								<input type="hidden" class="payMoney" name="payMoney" value="30000">
								<div class="poster">
									<img src="" alt="영화포스터">
								</div>
								<button type="submit" class="reserve-button">결제하기</button>
							</form>
						</div>
						
						<script>
							function kakaopay(){
								$.ajax({
									url : "pay.ti",
									type : 'POST',
									dataType : 'json',
									contentType: 'application/json; charset=UTF-8',
									data: {
										moiveName : 'title', // movieName in MOVIE
										theaterNo : 'selectedTheater', // theaterNo in THEATER
										runSch : 'movieDate', // runSch in SCHEDULE
										runtime : 'runningTime', // runTime in MOVIE
										rate : 'movieAge', // rate in MOVIE
										ticketNumber : 'ticketNumber', // 
										selectedSeat : 'selectedSeat', // seatNo in seat (,로 구분)
										payment : 'payMoney' // payment in PAYMENT
									},
									success : function(result){
										console.log(result)
										alert(result.tid);
									},
									error : function(){
										alert("결제에 실패했습니다.");
									}
								})
							}
						</script>

					</div>
					<div class="seat-container">
						<div class="seat-state">
							<div class="state">
								<div class="seat-type type1"></div>
								<div class="seat-disc">선택 좌석</div>
							</div>
							<div class="state">
								<div class="seat-type type2"></div>
								<div class="seat-disc">예매 완료</div>
							</div>
							<div class="state">
								<div class="seat-type type3"></div>
								<div class="seat-disc">선택 불가</div>
							</div>
						</div>
						<div class="seat-wrapper">
							<div class="screen-view-wrapper">
								<div class="screen-view">SCREEN</div>
								
								<%@ include file="seat160.jsp" %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
        <!-- <%@ include file="../common/footer.jsp" %> -->
    </div>
</body>
</html>