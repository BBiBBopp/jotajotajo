<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/msj_css/03_search_pwd.css">
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
                        <a href="" id="search_pwd_text">비밀번호 찾기</a>
                    </div>
                </div>
                <div class="ment">
                    <p id="ment_1">
                        비밀번호가 기억나지 않아 답답하셨나요? <br>
                        아이디를 입력하시면 찾을 수 있는 방법을 알려드려요.
                    </p>
                </div>
            </div>
            <div id="content_3">
                <div class="simple_search">
                    <p>
                        비밀번호 찾기
                        <hr>
                    </p>
                </div>
                <form action="" method="post">
                    <div class="check_info">
                        <div id="info_keyword">
                            아이디<br>
                        </div>
                        <div id="info_input">
                            <input type="text" name="userId"> <br>
                        </div>
                    </div>
                    <div class="search_pwd_btn">
                        <button><a href="">비밀번호 찾기</a></button>
                    </div>
                </form>
                
                
            </div>
        </div>





	<%@ include file="../common/footer.jsp" %>
</body>
</html>