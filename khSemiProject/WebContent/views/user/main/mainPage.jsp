<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

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

    /* #header > div, #content > div {
        height: 100%;
        float: left;
    } */


    #container_1 { height: 40%; }
    #container_2 { height: 40%; }
    #container_3 { height: 20%; }



    .thumbnail-image0 {
        width: 750px;
        height: 400px;
        margin-top: 30px;
        margin-left: auto;
        margin-right: auto;
        display: flex;
    } 

    .main-container {
        margin-top: 30px;
        display: flex;
        margin-left: auto;
        
    }

    .thumbnail-image {
    	
        width: 150px;
        height: 200px;
    }

    .thumbnail-list {
        list-style: none;
        /* margin-left: auto; */
        /* padding: 0 30px; */
       
        
    }

    .thumbnail-title {
        display: block;
        text-align: center;
        /* padding: 5px 10px; */
        font-size: 15px;
        height: 25px;
    }

 

/*
	.list_navi li {
		
        width: 14%;
        text-align: center;
        height: 100%;
	}
*/
	


</style>


</head>
<body>
	<%@ include file="../common/header.jsp" %>
	    <script>
        window.onload =function () {
            window.open("popup. html",  "popupNo1", "width=300, height=360");
         }
        </script>

            <div id="container">
                <div id="container_1">
                    <img src="../../../resource/css/image/52ef372732ec3bbee5fb9159477006ad.jpg" alt="영화0" class="thumbnail-image0">

                </div>
                <div id="container_2">
                    <!-- <div class="service_area2">현재 상영 영화</div> -->
                    <br><br>
                    <div style="font-size: x-large;"><b>현재 상영 영화</b></div>
                    
                    <main class="main-container">
                        <ul class="thumbnail-list">
                            <li class="thumbnail-item">
                                
                                <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="영화1" class="thumbnail-image">
                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
                        </ul>
                        <ul class="thumbnail-list">
                            <li class="thumbnail-item">
                                <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="영화2" class="thumbnail-image">
                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
                        </ul>
                        <ul class="thumbnail-list">
                            <li class="thumbnail-item">
                                <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="영화3" class="thumbnail-image">
                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
                        </ul>
                        <ul class="thumbnail-list">
                            <li class="thumbnail-item">
                                <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="영화4" class="thumbnail-image">
                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
                        </ul>
                        <ul class="thumbnail-list">
                            <li class="thumbnail-item">
                                <img src="../../../resource/css/image/abbca385468091a7ba232e09.jpg" alt="영화5" class="thumbnail-image">
                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
                        </ul>
                
                    </main>
                </div>
                <div id="container_3">
                    <hr size="1" noshade>
                    <p>공지사항
                    	<input type="button" value="더보기" style="float:right;">
                    </p>
                    <hr size="1" noshade>
                    <pre>고객센터      <button onclick="location.href='../notice/FAQView.jsp'">FAQ</button>      <button>1:1문의</button></pre>
                    <hr size="1" noshade>

                </div>
            </div>
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>