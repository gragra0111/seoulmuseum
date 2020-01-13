<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
function boardPage() {
	GF.ajax._html('board/list');
}
function signupPage() {
	GF.ajax._html('auth/signup');
}

</script>
	<!-- <nav>
		<ul class="nav">
			<li><button></button></li>
			<li><button></button></li>
			<li><button></button></li>
		</ul>
	</nav> -->
	<header id="header">
		<div class="top">
			<h1>
				<a href="#" class="logo">서울미술관</a>
			</h1>
			<div class="top_menu">
				<ul class="clear">
					<li><a href="auth/login">로그인</a></li>
					<li><a href="#" onclick="signupPage()">회원가입</a></li>
					<li><a href="#">고객센터</a></li>
					<li class="em"><a href="#">서울특별시청</a></li>
				</ul>
				<button class="header_menu"></button>
			</div>
		</div>
		<div class="bottom">
			<ul>
				<li><a href="#">ABOUT</a></li>
				<li><a href="#">EXHIBITION</a></li>
				<li><a href="#">NOTICE</a></li>
				<li><a href="#">EDUCATION</a></li>
				<li><a href="#">CONTACT</a></li>
			</ul>
			<div class="sub">
				<div class="inner clear">
					<ul>
						<li><a href="#">인사말</a></li>
						<li><a href="#">미술관 소개</a></li>
						<li><a href="#">관람 안내</a></li>
					</ul>
					<ul>
						<li><a href="#">전시 소개</a></li>
						<li><a href="#">현재 전시 일정</a></li>
						<li><a href="#">예정 전시 일정</a></li>
						<li><a href="#">지난 전시 일정</a></li>
						<li><a href="#">전시 갤러리</a></li>
					</ul>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#" onclick="boardPage()">문의 및 답변</a></li>
						<li><a href="#">대관 문의</a></li>
					</ul>
					<ul>
						<li><a href="#">SAM 키즈 프로그램</a></li>
					</ul>
					<ul>
						<li><a href="#">오시는 길</a></li>
					</ul>
					<span class="arrow"></span>
				</div>
			</div>
		</div>
	</header>