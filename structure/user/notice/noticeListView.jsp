<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터-공지사항-목록조회</title>
</head>

<body>
	<!--header-->
	<%@ include file="../common/header.jsp"%>
	<div id="container">
		<!-- 고객센터 메뉴바 넣을 자리-->
        <div></div>
        
        <div class="notice-search">
            <form action="">
                <select name="" id="">
                    <option>제목</option>
                    <option>내용</option>
                </select>
                <input type="search">
                <input type="submit" value="검색">
            </form>
        </div>
        <div class="notice-body">
            <table class="table">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>구분▼</th>
                        <!-- 구분으로 선택해서 filter -->
                        <th>제목</th>
                        <th>등록일</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- tr*3 : 중요공지 상단노출 -->
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                    <!-- tr*5 : 일반공지 -->
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                    <tr>
                        <td>!</td>
                        <td>전체</td>
                        <td>테스트</td>
                        <td>22/01/01</td>
                    </tr>
                </tbody>
            </table>
            
            <!-- Pagination -->
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </div>


    </div>
	<!--footer-->
	<%@ include file="../common/footer.jsp"%>
</body>

</html>