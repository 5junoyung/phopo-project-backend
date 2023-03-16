<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	/* 로그인시 저장했던 sessionId 가져오기 로그인 안한 상태면 sessionId==null */
	String sessionid = (String)session.getAttribute("sessionid");
%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; chatset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
<style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 5px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    .card-1{
    	text-align:center;
    	font-weight:bold;
    } 
    .navbar-brand{
    	padding: 20px 0 0 9px;
    	color:#fff;
    	font-size:50px;
    }
    .nav-link{
    	color:#fff;
    	
    }         
    .a{
    	color:#fff;
    	margin: 40px 0 0 40px;
    }
    .b{
    	padding: 20px 0 0 0;
    }    
 </style>
    
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
  	<img class="b" onclick="location.href='/main/main'" style="cursor:pointer;" src="/main/images/korea.png" width="130px" height="130px" alt="" >
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <c:set var="s" value="${sessionScope.sessionid }" />
	        <c:choose>
	        <c:when test="${sessionid eq 'admin'}">
	        <div class="a"> [관리자] 
	        </c:when>	        
	        <c:when test="${not empty sessionid}">
	        <div class="a"> [<%=sessionid %>님] 
	        </c:when>
			<c:when test="${empty sessionid}"> 
			<div class="a"> [로그인 후 이용하세요] 
			</c:when>
			</c:choose>
		    <hr>
		    	<ul class="navbar-nav">

		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="/join">회원가입</a>    
		        </li>
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="/board/list">게시판</a>    
		        </li>
				<c:choose>
					<c:when test="${empty s}">
					<li><a class="nav-link active" aria-current="page" href="/login">로그인</a></li></c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${s eq 'admin'}">
							<li><a class="nav-link active" aria-current="page" href="/logout">로그아웃</a></li>
							<li><a class="nav-link active" aria-current="page" href="/post/admin">여행지등록</a></li></c:when>
							<c:otherwise>
							<li><a class="nav-link active" aria-current="page" href="/logout">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>		    	        	        
		      </ul>
	    	</div>
	    	</div>
	   	</div>
	</div>
</nav>


<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">로그인</h4>
        <form class="validation-form"  action="/dologin/confirm" method="post" novalidate >

		<c:if test="${error != null }">
			<div class="alert alert-danger alert-dismissible  fade show mt-3">
				에러 발생: ${error}
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
			</div>
		</c:if>

          <div class="mb-3">
            <label for="userid">아이디</label>
            <input type="text" class="form-control" id="userid" name="userid" placeholder="아이디" maxlength="20" required>
            <div class="invalid-feedback">
              아이디를 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="userps">비밀번호</label>
            <input type="password" class="form-control" id="userps" name="userps"  placeholder="비밀번호" maxlength="20" required>
            <div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div>
          </div>

          <hr class="mb-4">
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">로그인</button>
		  <button class="btn btn-primary btn-lg btn-block" type="button" onclick="location.href='join'">회원가입</button>
        </form>
      </div>
    </div>
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>
</html>