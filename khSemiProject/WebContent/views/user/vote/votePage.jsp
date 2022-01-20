<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표 페이지</title>
<link rel="stylesheet" href="resource/css/00_stylesheet.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        div {
        /* border: 1px solid black; */
        box-sizing: border-box;
    }

    .wrap>div { width: 100%; }

#header { height: 10%; }
/* #navi_area {height: 10%;} */
#footer { height: 10%; }
#container { height: 70%; }

.thumbnail-image0 {
        width: 700px;
        height: 400px;
        margin-top: 300px;
        margin-left: auto;
        margin-right: auto;
        display: flex;
    } 
    .main-container {
        margin-top: 0px;
        display: flex;
        margin-left: auto;
        
    }
    .thumbnail-image {
        width: 220px;
        height: 350px;
    }

    .thumbnail-list {
        list-style: none;
        /* margin-left: auto;
        margin-right: auto; */
        /* padding: 0 30px; */
        
        
    }

    .thumbnail-title {
        display: block;
        text-align: center;
        /* padding: 5px 10px; */
        font-size: 15px;
        height: 25px;
    }

    .service_area3 {
        position: relative;
        margin-top: 250px;
        margin-left: 40px;
        font-size: 25px;
    }

    .checkbox input.checkbox1{
    font-size: 1em;
    width: 1.25em; /* 너비 설정 */
    height: 1.25em; /* 높이 설정 */
    vertical-align: right;
}

    </style>


</head>
<body>

	<%@ include file="../common/header.jsp" %>
	
	<div id="container">
            <div id="container_4">
                <div class="service_area3">2월 투표</div>
                <br><br>
                
                <main class="main-container">
                    <ul class="thumbnail-list">
                        <li class="thumbnail-item">
                            <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="투표1" class="thumbnail-image"
                            class="btn btn-primary" data-toggle="modal" data-target="#myModal">

                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                  
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                      <h4 class="modal-title">영화1</h4>
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    
                                    <!-- Modal body -->
                                    <div class="modal-body">
									제목 :	<br>
									장르 :	<br>
									연도 :
                                    </div>
                                    
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    </div>
                                    
                                  </div>
                                </div>
                              </div>
                            <span class="thumbnail-title">영화1 <br><br>
                            <div class="checkbox"><input type="radio" name="radio1" id="radio1" value="1" class="checkbox1">
                            </div></span></li>
                    </ul>
                    <ul class="thumbnail-list">
                        <li class="thumbnail-item">
                            <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="투표2" class="thumbnail-image">
                            <span class="thumbnail-title">영화2 <br><br>
                            <div class="checkbox"><input type="radio" name="radio1" id="radio1" value="1" class="checkbox1">
                            </div></span></li>
                        </ul>
                    </ul>
                    <ul class="thumbnail-list">
                        <li class="thumbnail-item">
                            <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="투표3" class="thumbnail-image">
                            <span class="thumbnail-title">영화3 <br><br>
                            <div class="checkbox"><input type="radio" name="radio1" id="radio1" value="1" class="checkbox1">
                            </div></span></li>
                        </ul>
                    </ul>
                    <ul class="thumbnail-list">
                        <li class="thumbnail-item">
                            <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="투표4" class="thumbnail-image">
                            <span class="thumbnail-title">영화4 <br><br>
                            <div class="checkbox"><input type="radio" name="radio1" id="radio1" value="1" class="checkbox1">
                            </div></span></li>
                        </ul>
                    </ul>
                </main>
            </div>
            <br><br><br><br><br>    

            <div align="center"><button>투표하기</button></div>
        </div>
        <br><br><br><br><br><br>    
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>