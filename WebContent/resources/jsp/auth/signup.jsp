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
  	<title>서울미술관 회원가입</title>

	<script type="text/javascript" language="javascript">
		$(document).ready(function() {
			/* var ajax = new GF.comm.ajax();
			var param = "";  
		    ajax.url("/auth/getUser");
		    ajax.success(function(data){
		        console.log(data);
			});
		    ajax.call(); */
		    GF.ajax.get("/auth/getUserList", {}, function(result) {
		    	console.log(result);
		    });
		    
		    $("#read").click(function() {
		    	GF.ajax.get("/auth/getUserInfo/test", {}, function(result) {
			    	console.log(result);
				});
			});
		    $("#create").click(function() {
				var param = {
		    		id: "test",
		    		password: "test",
		    		name: "test",
		    		birth: "test",
		    		isSolar: true,
		    		sex: "M",
		    		mobile: "01012345678",
		    		email: "mail@naver.com"
		    	}
		    	GF.ajax.post("/auth/createUser", param, function(result) {
			    	console.log(result);
				});
			});
		    $("#update").click(function() {
				var param = {
		    		id: "test",
		    		password: "test1",
		    		name: "test1",
		    		birth: "test1",
		    		isSolar: true,
		    		sex: "M",
		    		mobile: "01012345671",
		    		email: "mail1@naver.com"
		    	}
		    	GF.ajax.put("/auth/updateUser", param, function(result) {
			    	console.log(result);
				});
			});
		    $("#delete").click(function() {
		    	GF.ajax.delete("/auth/deleteUser/test", {}, function(result) {
			    	console.log(result);
				});
			});
		});
	</script>
</head>
<body>
	<div id="wrap" class="signup">
		<div class="inner">
			<header>
			<h1>서울미술관</h1>
			</header>
			<section>
			<h2>서울미술관의 모든 서비스를 이용해보세요.</h2>
			<div class="form">
				<span class="title star">계정 아이디</span> <input type="text"
					placeholder="영문, 숫자 6~13자로 대소문자 구분"> <span class="wran">필수
					입력값입니다.</span>
			</div>
			<div class="form pw">
				<span class="title star">비밀번호</span> <input type="password"
					placeholder="영문, 숫자, 특수문자(~,!,@,$,^,*) 8~15자로 대소문자 구분"> <input
					type="password" placeholder="비밀번호 확인"> <span class="wran">필수
					입력값입니다.</span>
			</div>
			<div class="form">
				<span class="title star">성명</span> <input type="text"
					placeholder="띄어쓰기 없이 입력"> <span class="wran">필수
					입력값입니다.</span>
			</div>
			<div class="form birth">
				<span class="title star">생년월일</span>
				<div class="clear">
					<input type="number" placeholder="YYYY(4자)">
					<div class="selectbox">
						<label for="month">월</label> <select id="month">
							<option value="월" hidden>월</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
					</div>
					<div class="selectbox">
						<label for="day">일</label> <select id="day">
							<option value="일" hidden>일</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">19</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</div>
					<div class="selectbox">
						<label for="sex">양/음</label> <select id="sex">
							<option value="양/음" hidden>선택</option>
							<option value="양력">양력</option>
							<option value="음력">음력</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form sex">
				<span class="title">성별</span>
				<div class="radiobox clear">
					<div class="radio">
						<input type="radio" id="none" name="sex"> <label
							for="none">선택안함</label>
					</div>
					<div class="radio">
						<input type="radio" id="m" name="sex"> <label for="m">남성</label>
					</div>
					<div class="radio">
						<input type="radio" id="fe" name="sex"> <label for="fe">여성</label>
					</div>
				</div>
			</div>
			<div class="form">
				<span class="title star">휴대폰번호</span> <input type="number"
					placeholder="하이픈(-)을 제외하고 입력"> <span class="wran">필수
					입력값입니다.</span>
			</div>
			<div class="form email">
				<span class="title">이메일주소</span>
				<div class="clear">
					<input type="text"> <input type="text">
					<div class="selectbox">
						<label for="email">직접입력</label> <select id="email">
							<option value="직접입력" hidden>직접입력</option>
							<option value="네이버">naver.com</option>
							<option value="다음">daum.net</option>
							<option value="지메일">gmail.com</option>
							<option value="네이트">nate.com</option>
						</select>
					</div>
				</div>
			</div>
			<button class="done" onclick="myFunction()">제출하기</button>
			<button class="done" id="read">테스트</button>
			<button class="done" id="create">테스트등록</button>
			<button class="done" id="update">테스트수정</button>
			<button class="done" id="delete">테스트삭제</button>
			</section>
		</div>
	</div>
	<script>
		$(function() {
			var selectTarget = $('.selectbox select');
			selectTarget.change(function() {
				var select_name = $(this).children('option:selected').text();
				$(this).siblings('label').text(select_name);
			});
		});
	</script>
</body>
</html>