<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기_성공</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/msj_css/02_z02search_id_success.css">
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div id="container">
            <div id="content_1">
                <p class="mainText">
                   	 아이디 / 비밀번호 찾기
                </p>
            </div>
            <div id="content_2">
                <div class="choose">
                    <div>
                        <a href="" id="search_id_text">아이디 찾기</a>
                    </div>
                    <div>
                        <a href="">비밀번호 찾기</a>
                    </div>
                </div>
                <div class="ment">
                    <p id="ment_1">
                        	개인정보보호를 위해 아이디의 일부는 *로 표시됩니다.
                    </p>
                </div>
            </div>
            <div id="content_3">
                <div class="result_text">
                    <p>
                        	결과
                        <hr>
                    </p>
                </div>
                <div class="show_result">
                    <div id="radio_button">
                        <input type="radio" checked> 
                    </div>
                    <div class="input_place">
                        <p id="input_userId">userId 넣을 곳</p>
                    </div>
                    <div class="input_place">
                        <p id="inpput_enrollment_date">가입일 넣을 곳</p>
                    </div>
                </div>
                <button id="login_btn"><a href="">로그인</a></button>                
            </div>
        </div>
	
	
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>