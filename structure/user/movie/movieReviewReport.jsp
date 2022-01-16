<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>신고하기</title>
        <link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="../../../resource/css/00_stylesheet.css">
        <link rel="stylesheet" href="../../../resource/css/01_minStylesheet.css">
    </head>

    <body>
        <!-- 작은 창에 띄울 내용 -->
        <div id="report-wrap">
            <!-- 신고 개요 -->
            <div>
                <h4>신고하기</h4>
                <ul>
                    <li>작성자 : </li>
                    <li>리뷰 : </li>
                </ul>
            </div>
            <hr>
            <!-- 신고 사유 -->
            <form action="" method="get">
            <ul>
                <li><input type="radio" id="reason1" name="report" value="1"><label for="reason1">주제와 연관없는 부적절한
                        내용</label></li>
                <li><input type="radio" id="reason2" name="report" value="2"><label for="reason2">청소년에게 부적합한 내용</label>
                </li>
                <li><input type="radio" id="reason3" name="report" value="3"><label for="reason3">명예훼손</label></li>
                <li><input type="radio" id="reason4" name="report" value="4"><label for="reason4">기타</label></li>
            </ul>
            <hr>
            <!-- 버튼 영역-->
            <div>
                <button type="submit" class="btn btn-secondary">신고</button>
                <!-- close 현재 창 -->
                <button type="button" class="btn btn-secondary">취소</button>
            </div>
        </div>
        </div>
    </body>

    </html>