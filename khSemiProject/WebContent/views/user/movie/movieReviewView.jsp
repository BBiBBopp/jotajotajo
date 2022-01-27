<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>영화 리뷰</title>
		<style>
			.star{
				border:none;
				width:10px;	
				height:10px;
			}
			#stars>.on{
				background:yellow;
			}
		</style>
	</head>

	<body>
		<!--header-->
		<%@ include file="../common/header.jsp" %>
		<div id="container">
			<!--영화 정보 상단 -->
			<%@ include file="movieSummary.jsp" %>
			
				<!-- 영화정보/평점 및 리뷰 버튼 영역 -->
				<div class="movie-body">
					
					<div class="movie-toggle">
						<a href="<%= contextPath %>/detail.mo?mno=<%= mv.getMovieNo() %>" class="movie-menu-half">영화 정보</a><a
						href="<%= contextPath %>/review.mo?mno=<%= mv.getMovieNo() %>" class="movie-menu-half  movie-active-menu">평점 및 리뷰 </a>
					</div>

					<!-- 영화 리뷰 영역 -->
					<div class="movie-review">
						<!-- 전체 관람객 평가 -->
						<div id="movie-reTotal">
							총 평점 <br>
							<strong><%= mv.getReviewAvg() %> / 10</strong>
						</div>
						<!-- 내 평가 -->
						<div id="movie-myReview">
							
								<!-- 점수 주는 영역 : mouseenter로 class에 on을 넣었다뺐다하기 특정 위치에 마우스를 올리면 그 전은 다 들어오고 그 뒤는 다 안들어오게 자바스크립트 구상-->
								<input type="text" name="starCount" id="starCount" value="10" size="2" required>
								<em>점</em>
								<div id="stars">
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
									<button class="star on"></button>
								</div>
								
								
								<textarea name="reviewContent" id="reviewContent" cols="80" rows="2" maxlength="150"
									placeholder="영화 관람평을 작성해주세요. 주제와 무관한 리뷰는 삭제될 수 있습니다."
									style="resize: none;" required></textarea>
									
									<label id="review-count">0/150</label><!-- 151자까지 됨 -->
								<button type="button" class="btn btn-secondary" id="reviewInsert" onclick="insertReview();">등록</button>
							
						</div>

						<!-- 리뷰 목록 -->
						<div>
							<div id="reviewCount"></div>

							<div id="review-sort">
								<a>최신순</a>
								<a>공감순</a>
							</div>
						</div>
						<hr>
							<ul id="reviewListView"></ul>
						<button class="btn btn-light btn-unfold" onclick="moreReview();">펼쳐보기</button>
						
						<script>
						var sCount = 1;//첫 페이지 리뷰 시작 카운트
						var eCount = 5;//첫 페이지 리뷰 엔드 카운트
						var moreCount = 0;
						var moreStart;
						var moreEnd;
						
						function selectReview(list){
							console.log('외안나와');
							var result = '';
							$('#reviewCount').text('총 '+list.length+'건');
							
							if(list.length == 0){
								result='<li>리뷰가 존재하지 않습니다. 첫번째 리뷰의 주인공이 되어주세요!</li>';
							}else{
								for(var i in list){
									var reviewEmoji;
									var content;
									var myLike;
									
									if(list[i].reviewGrade>4){
										emoji= 'far fa-smile';
									}else{
										emoji= 'far fa-frown';
									}

									if(list[i].reviewWriter != '<%=loginUser.getMemberId()%>'){
										mapping = 'reportForm();';
										content = '신고';
									}else{
										mapping = 'deleteReview();';
										content = '삭제';
									}

									if(list[i].myLike == 'Y'){
										myLike = 'fas fa-thumbs-up';
									}else{
										myLike = 'far fa-thumbs-up';
									}
									
									result += '<li>'
										+'<input type="hidden" value="'+list[i].reviewNo+'">'
										+'<div class="review-emoji"><i class="'+emoji+'" style="font-size:36px"></i></div>'
										+'<div class="review-text">'
											+'<span class="reviewWriter">'+list[i].reviewWriter+'</span>'
											+'☆'
											+'<span class="reviewGrade">'+list[i].reviewGrade+'</span>'
											+'<br>'
											+'<span class="reviewContent">'+list[i].reviewContent+'</span>'
											+'<br>'
											+'<span class="createDate">'+list[i].createDate+'</span>'
											+'<a onclick="'+mapping+'">'+content+'</a>'
										+'</div>'
										+'<div class="reviewLike" onclick="reviewLike();">'
											+'<i class="'+myLike+'" style="font-size:24px"></i>'
											+'<b>'+list[i].reviewLike+'</b>'
										+'</div>'
										+'</li><hr>';
								}
								//if()펼쳐보기가 끝나면 버튼 사라지게 하기
							}
						}
						
						
						function selectReviewList(s, e){
							console.log('1');
							$.ajax({
								url: 'list.re',
								data: {	
									'mno': <%= mv.getMovieNo() %>,
									'uno': <%= loginUser.getMemberNo() %>,
									'sCount': s,
									'eCount': e
									},
								success: function(list){//리스트 뿌리기
									$('#reviewListView').html(selectReview(list));
								},
								error: function(){
									alert('AJAX 통신 실패');
								}
									
							})
						}
						
						function addReviewList(s, e){
							$.ajax({
								url: 'list.re',
								data: {	
									'mno': <%= mv.getMovieNo() %>,
									'uno': <%= loginUser.getMemberNo() %>,
									'sCount': s,
									'eCount': e
									},
								success: function(list){//리스트 뿌리기
									$('#reviewListView').append(selectReview(list));
								},
								error: function(){
									alert('AJAX 통신 실패');
								}
									
							})
						}
						
						function moreReview(){
							moreCount += 5;//펼쳐보면 늘어날 리뷰 수
							moreStart = sCount+moreCount;
							moreEnd = eCount+moreCount;
							
							$.ajax({
								url: 'list.re',
								data: {	
									'mno': <%= mv.getMovieNo() %>,
									'uno': <%= loginUser.getMemberNo() %>,
									'sCount': moreStart,
									'eCount': moreEnd
									},
								success: function(list){//리스트 뿌리기
									addReviewList(moreStart, moreEnd);
								},
								error: function(){
									alert('AJAX 통신 실패');
								}
							})
						}
						
						
						
							
							
						//리뷰 등록 AJAX
						function insertReview(){
							$.ajax({
								url: 'insert.re',
								data: {
									mno: <%= mv.getMovieNo() %>,
									reviewContent: $('#reviewContent').val(),
									starCount: $('#starCount').val()
								},
								type: 'post',
								success: function(){
									alert('리뷰 등록 성공!');
									selectReviewList(sCount, eCount);
								},
								error: function(){
									alert('리뷰 등록 실패! 오류가 계속된다면 문의 바랍니다.');
								}
							})
						}
						
						//리뷰 좋아요
						function reviewLike(){
							
							var $reviewLike = $(window.event.target).parent();
							
							if(<%= loginUser == null %>){
								alert('로그인이 필요한 기능입니다.');
							}else{
								var reviewNo = $reviewLike.siblings('input').val();
								console.log(reviewNo);
								//현재 선택한 리뷰의 좋아요 여부
								var reIsLike;
								
								if($reviewLike.children('i').hasClass('fas')){
									reIsLike = "Y";
								}else{
									reIsLike = "N";
								}
								
								console.log($reviewLike.children('i').hasClass('fas'));
								console.log(reIsLike);
								console.log(reviewNo+reIsLike);
								console.log("<%= loginUser %>");
								
								$.ajax({
									url: 'like.re',
									data: {
										'reviewNo': reviewNo,
										'isLike': reIsLike,
										'mno': <%= mv.getMovieNo() %>
										},
									type: 'get',
									success: function(result){
										alert('리뷰 좋아요 테스트');
										if(result>0){
											if(reIsLike=="Y"){
												//하나 오르고 좋아요 마크 채워짐
												$reviewLike.children('b').text(Number($reviewLike.children('b').text())-1);
												$reviewLike.children('i').removeClass('fas').addClass('far');
											}else{
												//하나 줄어들고 좋아요 마크 빔
												$reviewLike.children('b').text(Number($reviewLike.children('b').text())+1);
												$reviewLike.children('i').removeClass('far').addClass('fas');
											}					
										}else{
											console.log('결과이상'+result);
										}
										
									},
									error:function(){
										alert('서버 통신 실패! 지속된다면 고객센터에 문의해주세요.');
									}
								})
							}
						}
						
						//리뷰 삭제
						function deleteReview(){
							var $reviewLi = $(window.event.target).parent();
							var reviewNo = '?reviewNo='+$reviewLi.siblings('input').val();
							
							if(confirm('삭제하시겠습니까?')){
								$.ajax({
									url: 'delete.re',
									data: {
										'reviewNo': reviewNo
									},
									success: function(result){
										if(result>0){
											alert('삭제 성공');
										}else{
											alert('삭제 실패');
										}
										selectReviewList(sCount, eCount);
										
									},
									error: function(){
										alert('통신 실패');
									}
								})
							}
						}
						
						//리뷰 신고
						function reportForm(){
							console.log('신고클릭');
							var $target = $(window.event.target);
							
							var url = '<%= contextPath %>/reportForm.re';
							var reviewNo = '?reviewNo='+$target.parent().siblings('input').val();
							var reviewWriter = '&reviewWriter='+$target.siblings('.reviewWriter').text();
							var reviewContent = '&reviewContent='+$target.siblings('.reviewContent').text().substring(0,20);
									
							window.open(url+reviewNo+reviewWriter+reviewContent,'신고하기','width=500, height=500');
						}
						
						//DOM이 로드되면 실행할 함수들
						$(function(){
							//미로그인 사용자는 비활성화
							if(<%= loginUser == null %>){
								console.dir($('#reviewInsert'));
								$('#review').attr('placeholder','로그인된 사용자만 작성할 수 있습니다.').css('background', 'rgb(233,233,233)');
								$('#movie-myReview>form').submit(function(e){
									e.preventDefault();
								});
								//지은씨 modal 가져와서 활성화하기
							};
							//리스트 조회하는 함수
							selectReviewList(sCount, eCount);
								
							//별에 불 들어오기
							$('.star').on('mouseenter', function(){
								$(this).addClass('on');
								$(this).prevAll().addClass('on');
								$(this).nextAll().removeClass('on');
								//별에 불들어온게 바뀌면, #starCount 에 넣어주기
								$('#starCount').val($('#stars').children('.on').length);
							});
								
							//리뷰입력 keyup
							$('#review').keyup(function(){
								$('#review-count').text($(this).val().length+'/150');
							});
						})
					</script>
				</div>
			</div>
		<!--footer-->
		<%@ include file="../common/footer.jsp" %>
	</body>

	</html>