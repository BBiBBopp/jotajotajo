<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<style type="text/css">
    #temporaryEmailBtn , .btn-area>input, #searchBtn{
        width: 160px;
        height: 40px;
        background: rgb(13, 71, 161);
        color: white;
    }
    .page-area a{
        width: 40px;
        height: 40px;
        background: rgb(13, 71, 161);
        color: white;
    }
</style>
</head>
<body>
    <div class="outer">
        <div class="menubar">
            <%@ include file="../common/menubar.jsp" %>
        </div>
        <div class="content">
            <div class="container">
                <br>
                <h2>회원 관리</h2>
                <div class="search-area">
                    <input type="text" name="search">
                    <input id="searchBtn" type="submit" value="검색">
                </div>         
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>회원아이디</th>
                            <th>회원이름</th>
                            <th>생년월일</th>
                            <th>성별</th>
                            <th>이메일</th>
                            <th>전화번호</th>
                            <th>수정 / 삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>user01</td>
                            <td>홍길동</td>
                            <td>1999-01-01</td>
                            <td>남</td>
                            <td>user01@naver.com</td>
                            <td>010-1111-2222</td>
                            <td>
                                <button id="updateBtn">수정</button>
                                <button id="deleteBtn">삭제</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>user01</td>
                            <td>홍길동</td>
                            <td>1999-01-01</td>
                            <td>남</td>
                            <td>user01@naver.com</td>
                            <td>010-1111-2222</td>
                            <td>
                                <button id="updateBtn">수정</button>
                                <button id="deleteBtn">삭제</button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>user01</td>
                            <td>홍길동</td>
                            <td>1999-01-01</td>
                            <td>남</td>
                            <td>user01@naver.com</td>
                            <td>010-1111-2222</td>
                            <td>
                                <button id="updateBtn">수정</button>
                                <button id="deleteBtn">삭제</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="page-area">

                    <a href="">&lt;</a>
                    <a href="">1</a>
                    <a href="">2</a>
                    <a href="">3</a>
                    <a href="">4</a>
                    <a href="">5</a>
                    <a href="">6</a>
                    <a href="">7</a>
                    <a href="">8</a>
                    <a href="">9</a>
                    <a href="">10</a>
                    <a href="">&gt;</a>


                </div>
            </div>
            
        </div>
    </div>
    
</body>
</html>