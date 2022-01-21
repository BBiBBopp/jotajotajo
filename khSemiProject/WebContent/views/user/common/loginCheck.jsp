<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		$(function() {
			$(".login-check").click();
		})
	</script>

	<!-- Button trigger modal -->
	<button type="button" hidden class="login-check btn btn-primary"
		data-toggle="modal" data-target="#staticBackdrop">Launch
		static backdrop modal</button>


	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">1:1 문의 내역 확인</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<b> 로그인 후 이용 가능한 서비스입니다. <br> 로그인 하시겠습니까?<br>
					<br>
					</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="history.back();">Close</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href='<%=request.getContextPath()%>/login.log'">Understood</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>