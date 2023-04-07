<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/findAccount.css">
    </head>
<body>

    <div class="background">
     <div class="login-wrapper">
      <!-- 스터디 메이트 메인사진과 , 글씨 -->
<div class="header">
  <img src="${pageContext.request.contextPath}/assets/img/studymatelogo.png" alt="" />
    <h2>비밀번호 찾기</h2>
    <br>
    <span>회원 가입시 입력하신 이메일 주소와 아이디를 입력하시면,
      <br>
      비밀번호 변경이 가능합니다 ! 
    </span>
  </div>

  <br>
  <br>

     <!-- 이메일 주소 입력란 -->
    <form action="/member/findAccountOk.me" method="post" >
      <div class="input-group">
        <div class="login-form">
        <label for="email">이메일 주소</label>
        <input type="text" id="email" name="memberEmail" placeholder="이메일을 입력해주세요"required />
      </div>
    </div>
      
      <div class="input-group">
        <div class="login-form">
        <label for="Id">아이디</label>
        <input type="text" id="Id" name="memberId" placeholder="아이디를 입력해주세요"required />
      </div>
    </div>

    <br>
    <br>
    <!-- 버튼 div 계정찾기,취소 -->
    <div class="buttonsAll">
      <div class="buttons">
        <input type="submit" value="비밀번호 찾기" onclick="openModal()"  />
      </div>
      </form>
      <br>
      <div class="buttons">
        <input type="button" value="취소" onclick="location.href='http://localhost:8085/member/login.me'" />
      </div>
    </div> 
    </div>





<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h3>비밀번호 변경</h3>
        <form action="/member/findAccountOk.me" method="post"  />
             <input type="hidden" id="modalEmail" name="memberEmail" />
        <input type="hidden" id="modalId" name="memberId" />
        <div class="input-group">
            <div class="login-form">
                <label for="newPassword">새 비밀번호</label>
                <input type="password" id="newPassword" name="memberPassword" placeholder="새 비밀번호를 입력해주세요" required />
            </div>
        </div>
        <div class="input-group">
            <div class="login-form">
                <label for="confirmPassword">비밀번호 확인</label>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="비밀번호를 다시 입력해주세요" required />
            </div>
        </div>
        <br>
        <div class="buttons">
            <input type="submit" value="비밀번호 변경" />
        </div>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/findAccount.js"></script>




</body>
</html>