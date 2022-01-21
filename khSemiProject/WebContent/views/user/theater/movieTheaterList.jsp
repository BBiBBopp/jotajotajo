<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관목록</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/msj_css/04_z01_movietheater_list.css">
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div id="container">
            <div id="content_1">
                <h1>극장 안내</h1>
            </div>
            <div id="content_2">
                <table border="1">
                    <thead>
                        <tr>
                            <th width="250">극장명</th>
                            <th  width="350">주소</th>
                            <th  width="250">전화번호</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                        <tr>
                            <td>CGV압구정</td>
                            <td>서울 강남구 신사동 602</td>
                            <td>1544-1122</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="content_3">
                <div id="paging_btn">
                    <button>1</button>
                    <button>2</button>
                    <button>3</button>
                    <button>4</button>
                    <button>5</button>
                    <button>6</button>
                    <button>7</button>
                    <button>8</button>
                </div>
            </div>
            
        </div>
	
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>