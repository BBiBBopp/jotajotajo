<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>고객센터-FAQ</title>
    </head>

    <body>
        <!--header-->
        <%@ include file="../common/header.jsp" %>
            <div id="container">
                <!-- 고객센터 메뉴바 넣을 자리-->
                <div></div>

                <!-- FAQ  -->
                <div class="toolbar">
                    <p>더 궁금한 점이 있거나, 이미 문의한 내용과 답변을 확인하려면?</p>
                    <a href="#">1:1문의 바로가기</a>
                </div>
                <div class="notice-search">
                    <form action="">
                        <input type="search">
                        <input type="submit" value="검색">
                    </form>
                </div>
                <div class="FAQ-class">
                    <ul>
                        <li>
                            <img src="" alt="예매">
                            예매
                        </li>
                        <li>
                            <img src="" alt="영화관">
                            영화관
                        </li>
                        <li>
                            <img src="" alt="회원">
                            회원
                        </li>
                        <li>
                            <img src="" alt="홈페이지">
                            홈페이지
                        </li>
                        <li>
                            <img src="" alt="멤버십">
                            멤버십
                        </li>
                        <li>
                            <img src="" alt="투표">
                            투표
                        </li>
                        <li>
                            <img src="" alt="기타">
                            기타
                        </li>
                    </ul>
                </div>
                <div class="FAQ-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    FAQ 제목
                                </th>
                                <th>
                                    FAQ 내용
                                </th>
                                <th>∨</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- tr:내용 가져오기 -->
                            <td>
                                FAQ 제목
                            </td>
                            <td colspan="2">
                                FAQ 내용
                            </td>
                        </tbody>
                    </table>
                </div>
                <!-- Pagination -->
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>


            </div>
            <!--footer-->
            <%@ include file="../common/footer.jsp" %>
    </body>

    </html>