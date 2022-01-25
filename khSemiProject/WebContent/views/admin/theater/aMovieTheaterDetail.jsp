<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 영화관 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/admin/theater/05_z02_admin_movietheater_detail.css">
</head>
<body>
		<div id="container">
			<div class="menutab">
       	 		<%@ include file="../common/menubar.jsp" %>
    		</div>
    		<div id="content_wrap">
            	<div id="content_1">
                	<div id="title">
                    	<h2>영화관 상세</h2>
            	</div>
            	<div id="content_2">
                	<div class="input_info">
                    	<div id="movietheater_info">
                        	<div id="input_ment">
                           	 영화관명 <br>
                            	주소 <br>
                            	상영관수 <br>
                            	전화번호 <br>
                            	좌석수 <br>
                        	</div>
                        	<div id="input_tag">
                            	<input type="text"><br>
                            	<input type="text"><br>
                            	<input type="text"><br>
                            	<input type="text"><br>
                            	<input type="text"><br>
                        	</div>
                    	</div>
                    	<br clear="both">
                    	<div id="movietheater_file">
                        	<p>영화관 관련 이미지</p>
                        	<input type="file">
                        	<p>클릭하면 열림</p>
                    	</div>
                	</div>
                	<div>
                    <table class=table>
                        <thead>
                            <tr>

                                <th>상영관명</th>
                                <th>좌석수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="text" value="1">관</td>
                                <td><input type="text" value="160">석</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <br clear="both">
            </div>
            <div id="content_3">
                <hr>
                <div id="ex_info">
                    위치안내 &emsp;<input type="text" placeholder="위도, 경도를 ','를 포함하여 작성해주세요." style="width:380px;"></input><br><br>
                    교통안내 &emsp;<textarea name="" id="" style="resize: none;" rows="10"></textarea><br><br>
                    주차안내 &emsp;<textarea name="" id="" style="resize: none;" rows="10"></textarea><br><br>
                    주의사항 &emsp;<textarea name="" id="" style="resize: none;" rows="10"></textarea><br><br>
                </div>
            </div>
            <div id="content_4">
                <div>
                    <button>수정하기</button>
                    <button>삭제하기</button>
                </div>
            </div>
        </div>
    	</div>
	
	
	
	
</body>
</html>