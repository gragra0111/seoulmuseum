<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bxslider-4-4.2.12/dist/jquery.bxslider.min.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/media.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/js/common.js" type="text/javascript"></script>
  	<script src="${pageContext.request.contextPath}/resources/js/bxslider-4-4.2.12/dist/jquery.bxslider.min.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/js/global.js"></script>
  	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,400,500,700&display=swap" rel="stylesheet">
  	<title>석파정 서울미술관</title>

    <script type="text/javascript">
      function submitLoginInfo() {
        var login_id = document.getElementById('login_id').value;
        var login_pw = document.getElementById('login_pw').value;
        var remember_chk = document.getElementById('login_remember');

        if(remember_chk.checked == true){
          var login_remember = true;
        }else{
          login_remember = false;
        }

        GF.ajax.post(
          "login/process",
          {
            id: login_id,
            password: login_pw,
            rememberId: login_remember
          },
          function (){
            alert(login_id + '님 환영합니다!');
            location.href = "/main";
          },
          function() {
            alert('로그인이 실패하였습니다. 다시 입력해주세요.');
          }
        );
      }
    </script>
</head>
<body>
	<div id="wrap" class="login">
		<div class="inner">
			<h1>Sign in</h1>
			<div class="input_form">
				<div class="form">
					<span>User ID</span> <input type="text" placeholder="아이디를 입력하세요." id="login_id">
				</div>
				<div class="form">
					<span>Password</span> <input type="password"
						placeholder="패스워드를 입력하세요." id="login_pw">
				</div>
				<div class="option clear">
					<div class="left clear">
						<input type="checkbox" id="login_remember"> <label
							for="login_remember">Remember me</label>
					</div>
					<%-- <div class="right">
						<a href="#">Forget password?</a>
					</div> --%>
				</div>
			</div>
			<button class="login" onclick="submitLoginInfo()">Login</button>
			<span>ⓒ Design by. kimhyemi 2019</span>
		</div>
	</div>
</body>
</html>
