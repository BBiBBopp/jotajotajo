<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
<style>
	
	.outer, .header{
		margin: 0 auto;
	}
	.terms{
		overflow:scroll; 
		width:500px; 
		height:150px; 
		padding:10px; 
		
	}
	.member-area{
		width: 100%;
		margin: 0 auto;
    	max-width: 700px;
    	min-width: 460px;
	}
	.logo_bg {
	position: relative;
	margin: auto;
	height: 100%;
	background-color: white;
	
	}
	.logo_bg img {
	height: 170px;
	display: block;
	margin: auto;
	}
	.member-area>fieldset>form>ul>li{
        list-style: none;
    }
	
</style>
</head>
<body>
	<div class="header">
		<div class="logo_bg">
			<a href=""><img src="<%=request.getContextPath() %>/resource/image/cinema_logo900.jpg" alt="시네마헤븐"></a>
		</div>
	</div>
	<div class="outer" >
		<div class="member-area">
            <fieldset>
            <legend>회원수정</legend>
            <form action="" method="post">
                <ul>
                    <li>
                        <label for="memberId">아이디</label> 
                    </li>
                    <li>
                        <span>user01</span>
                    </li>
                    <li>
                        <label for="memberPwd">비밀번호</label>
                    </li>
                    <li>
                        <input type="password" name="memberPwd" id="memberPwd">
                    </li>
                    <li>
                        <label for="pwdCheck">비밀번호 확인</label>
                    </li>
                    <li>
                        <input type="password" id="pwdCheck">
                    </li>
                    <li>
                        <label for="memberName">이름</label>
                    </li>
                    <li>
                        <input type="text" name="memberName" id="memberName">
                    </li>
                    <li>
                        <label for="">생년월일</label>
                    </li>
                    <li>
                        <input type="text" name="" id="">
                        <select name="" id="">
                            <option value="0">월</option>
                        </select>
                        <input type="">
                    </li>
                    <li>
                        <label for="gender">성별</label>
                    </li>
                    <li>
                        <select name="" id="">
                            <option value="">성별</option>
                        </select>
                    </li>
                    <li>
                        <label for="email">이메일</label>
                    </li>
                    <li>
                        <input type="text" id="email" name="email">
                        <button id="emailCheck">이메일 변경</button>
                    </li>
                    <li>
                        
                    </li>
                    <li>
                        <label for="phone">휴대전화</label>
                    </li>
                    <li>
                        <input type="text" name="phone" id="phone">
                    </li>
                    <li>
                        <label for="">관심장르(중복 가능)</label>
                    </li>
                    <li> 
                        액션<input type="checkbox" name="" id="">
                        애니메이션<input type="checkbox" name="" id="">
                        드라마<input type="checkbox" name="" id="">
                    </li>
                    <li> 
                        스릴러<input type="checkbox" name="" id="">
                        코미디<input type="checkbox" name="" id="">
                        로맨스/멜로<input type="checkbox" name="" id="">
                    </li>
                    <li> 
                        범죄<input type="checkbox" name="" id="">
                        공포<input type="checkbox" name="" id="">
                        미스터리<input type="checkbox" name="" id="">
                    </li>
                    <li> 
                        성인물<input type="checkbox" name="" id="">
                        사극<input type="checkbox" name="" id="">
                        SF<input type="checkbox" name="" id="">
                    </li>
                    
                </ul>
                <div>
                    <input type="reset" value="취소">
                    <input type="submit" value="수정">
                    
                </div>

            </form> 
                <div>
                    <input type="button" value="탈퇴하기">
                </div>
            
        
           

            </fieldset>
		</div>
		

	</div>

	
</body>
</html>