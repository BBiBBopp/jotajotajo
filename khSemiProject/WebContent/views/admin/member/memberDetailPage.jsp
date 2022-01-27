<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member" %>

<% 
	Member m = (Member)request.getAttribute("m");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>

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
                <h2>회원 수정</h2>
                <form action="<%=contextPath %>/adminUpdate.me" >
                    <table class="table table-hover">
                        <tbody>
                            <tr>
                                <th>아이디</th>
                            </tr>
                            <tr>
                                <td><%=m.getMemberId() %></td>
                            </tr>
                            <tr>
                                <td>
                                    <button id="temporaryEmailBtn">임시 비밀번호 발급</button>
                                </td>
                            </tr>
                            <tr>
                                <th>이름</th>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="memberId" id="memberId" value="<%=m.getMemberName()%>">
                                </td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="email" id="email" value="<%=m.getEmail()%>">
                                </td>
                            </tr>
                            <tr>
                                <th>전화번호</th>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" name="phone" id="phone" value="<%=m.getPhone()%>">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="btn-area">
                        <input type="button" value="취소">
                        <input type="submit" value="수정">
                    </div>
                </form>             
            </div>
        </div>
    </div>
    

<div class="cd1">
  

</div>
</body>
</html>