<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList, com.kh.movie.model.vo.*, com.kh.notice.model.vo.Notice" %>    
    
<%
	
	Notice mainList = (Notice)request.getAttribute("mainList");
	ArrayList<Movie> currentList = (ArrayList<Movie>)request.getAttribute("currentList");
	ArrayList<Picture> picList = (ArrayList<Picture>)request.getAttribute("picList");
%>    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
#container_1{
	text-align: center;
}



</style>


</head>
<body>


<%@ include file="views/user/common/header.jsp" %>
		<script language="javascript">
		
        window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50");
         function moveClose() {
        	 opener.location.href="<%=contextPath %>/list.vot";
        	  self.close(); 
        	}   
        </script>

            <div id="container">
                <div id="container_1">
                    <!--  <img src="<%=contextPath %>/resource/image/52ef372732ec3bbee5fb9159477006ad.jpg" alt="영화0" class="thumbnail-image0">  -->
					<br><br>   
					
					<script language="JavaScript">
						var list = new Array()
						list[list.length]='<%=contextPath %>/resource/image/52ef372732ec3bbee5fb9159477006ad.jpg';
						list[list.length]='<%=contextPath %>/resource/image/88.jpg';
						list[list.length]='<%=contextPath %>/resource/image/99.jpg';
						list[list.length]='<%=contextPath %>/resource/image/10.jpg';
						j=parseInt(Math.random()*list.length);
						j=(isNaN(j))?0:j;
						function showimg(){
							document.write("<img src='"+list[j]+"' width='800' height='450'>");
						}
					
					</script>
					<script language="JavaScript">showimg();</script>
                </div>
                <div id="container_2">
                    <!-- <div class="service_area2">현재 상영 영화</div> -->
                    <br><br><br>
                    <div style="font-size: x-large;"><b>현재 상영 영화</b></div>
                    
                    
                    <div class="movie-list">
                
		                <% for(int i = 0; i < currentList.size();i++){ %>
		                    <div class="movie-one">
		                        <img src="<%=contextPath %><%= picList.get(i).getFilePath()+picList.get(i).getChangeName() %>" alt="" class="movie-poster">
		                        <!-- 바로 전 요소에 마우스 오버하면 나오는 영역 -->
		                        <div class="poster-button">
		                            <a href="#" class="btn">예매하기</a><br><br>
		                            <a href="<%=contextPath %>/detail.mo?mno=<%= currentList.get(i).getMovieNo() %>" class="btn">상세정보</a>
		                        </div>
		                        <ul>
		                            <li>
		                                <span><%= currentList.get(i).getMovieName() %></span>
		                            </li>
		                            <li>
		                                <span>예매율</span>
		                                <em>30%</em>
		                            </li>
		                        </ul>
		                    </div>
		                <% } %>   
                    
                    
                    
                    <!--  
	                    <main class="main-container">
	                        <ul class="thumbnail-list">
	                            <li class="thumbnail-item">
	                            	<div class="box">
	                              
	                                	<img src="resource/image/movie_upfiles/1.jpg" alt="영화1" class="thumbnail-image">
	                                
	                                 	
									</div>
	                                
	                                
	                                	<span class="thumbnail-title">영화 <br> 예매율</span></li>
	                               
	                                
	                        </ul>
	                        <ul class="thumbnail-list">
	                            <li class="thumbnail-item">
	                                <img src="resource/image/movie_upfiles/2.jpg" alt="영화2" class="thumbnail-image">
	                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
	                        </ul>
	                        <ul class="thumbnail-list">
	                            <li class="thumbnail-item">
	                                <img src="resource/image/abbca385468091a7ba232e09.jpg" alt="영화3" class="thumbnail-image">
	                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
	                        </ul>
	                        <ul class="thumbnail-list">
	                            <li class="thumbnail-item">
	                                <img src="resource/image/abbca385468091a7ba232e09.jpg" alt="영화4" class="thumbnail-image">
	                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
	                        </ul>
	                        <ul class="thumbnail-list">
	                            <li class="thumbnail-item">
	                                <img src="resource/image/abbca385468091a7ba232e09.jpg" alt="영화5" class="thumbnail-image">
	                                <span class="thumbnail-title">영화 <br> 예매율</span></li>
	                        </ul>
	                
	                  </main>
	                  -->
                </div>
                <br><br><br><br>
                
                <div id="container_3">
                    <hr size="1" noshade>
                    <p>공지사항  &nbsp;&nbsp;&nbsp; <a href="<%=contextPath %>/list.no">[공지사항] 
                    		<% if(mainList==null){ %>
					            		게시글이 없습니다.
				            	<% } else {%>
						                <%=mainList.getNoticeTitle() %>
					                
				                <% } %></a>
                    	<input type="button" class="btn btn-sm btn-primary" value="더보기" style="float:right;">
                    </p>
                    <hr size="1" noshade>
                    <p>고객센터 &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="location.href='../notice/FAQView.jsp'" class="btn btn-sm btn-primary">FAQ</button>
                          	 &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="location.href='<%=contextPath%>/enroll-form.qu'" class="btn btn-sm btn-primary">1:1문의</button>
                          	 <span style="float:right;">1544-0000</span></p>
                    <hr size="1" noshade>

                </div>
            </div>
	
	<br><br><br>
	<%@ include file="views/user/common/footer.jsp" %>

</body>
</html>