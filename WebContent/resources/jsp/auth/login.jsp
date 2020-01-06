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
  	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,400,500,700&display=swap" rel="stylesheet">
  	<title>석파정 서울미술관</title>
</head>
<body>
	<div id="wrap" class="login">
		<div class="inner">
			<h1>Sign in</h1>
			<div class="input_form">
				<div class="form">
					<span>User ID</span> <input type="text" placeholder="아이디를 입력하세요.">
				</div>
				<div class="form">
					<span>Password</span> <input type="password"
						placeholder="패스워드를 입력하세요.">
				</div>
				<div class="option clear">
					<div class="left clear">
						<input type="checkbox" id="remember"> <label
							for="remember">Remember me</label>
					</div>
					<div class="right">
						<a href="#">Forget password?</a>
					</div>
				</div>
			</div>
			<button class="login">Login</button>
			<span>ⓒ Design by. kimhyemi 2019</span>
		</div>
	</div>
</body>
</html>