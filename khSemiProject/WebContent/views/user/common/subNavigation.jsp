<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/user/common/subNav.css">
</head>
<body>
	 <div class="sub-nav-area">
        <div class="sub-nav-head">
            <h2>마이페이지</h2>
        </div>
        <div class="sub-nav-list membership">
           <a href="">멤버십</a> 
        </div>
        <div class="sub-nav-list member-info">
            <a href="">회원정보</a> 
        </div>
        <div class="sub-nav-list Qlist-view">
           <a href="<%=request.getContextPath()%>/list.qu">문의내역 확인</a> 
        </div>
        <div class="sub-nav-list ticket-list">
           <a href="<%=request.getContextPath()%>/list.ti">예매 내역 확인</a> 
        </div>
        <div class="sub-nav-bottom" style="border: none;">
            <span>시네마 헤븐 고객센터</span>
            For Your Convenience
            <br><br>
            9:30 ~ 18:30
        </div>
    </div>
    <script>
    	$(function(){
    		$(".Qlist-view").click(function(){
    			location.href = "<%=request.getContextPath()%>/list.qu";
    		})
    	});
    </script>
=======
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/common/subNav.css">
</head>
<body>
	 <div class="sub-nav-area">
        <div class="sub-nav-head">
            <h2>마이페이지</h2>
        </div>
        <div class="sub-nav-list membership">
           <a href="">멤버십</a> 
        </div>
        <div class="sub-nav-list member-info">
            <a href="">회원정보</a> 
        </div>
        <div class="sub-nav-list Qlist">
           <a href="<%=request.getContextPath()%>/list.qu">문의내역 확인</a> 
        </div>
        <div class="sub-nav-list ticket-list">
           <a href="<%=request.getContextPath()%>/list.ti">예매 내역 확인</a> 
        </div>
        <div class="sub-nav-bottom" style="border: none;">
            <span>시네마 헤븐 고객센터</span>
            For Your Convinience
            <br><br>
            9:30 ~ 18:30
        </div>
    </div>
>>>>>>> refs/heads/MoonKristal's
</body>
</html>