<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기_임시비밀번호발급</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/msj_css/03_z04_search_pwd_imsy_pwd.css">
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
                        개인정보보호를 위해 이메일의 일부는 *로 표시됩니다. <br>
                        본인인증 후에 비밀번호 재설정이 가능합니다.
                    </p>
                </div>
            </div>
            <div id="content_3">
                <div class="imsy_pwd">
                    <p>
                        임시비밀번호 발급
                        <hr>
                    </p>
                </div>
                <form action="<%= contextPath %>/spwdimsy.sch" method="post">
                    <div class="check_info">
                        <div id="info_keyword">
                            임시비밀번호를 받으실 이메일을 입력하세요.
                        </div>
                        <div id="info_input">
                            <input type="email" name="email" placeholder="이메일 주소 전체를 입력해 주세요."> <br>
                        </div>
                    </div>
                    <div class="btn_div">
                        <button type="submit">다음단계</button>
                    </div>
                </form>
                
                
            </div>
        </div>
	
	
	
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>