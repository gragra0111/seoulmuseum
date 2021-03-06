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
	<div id="wrap">
		<nav>
		<ul class="nav">
			<li><button></button></li>
			<li><button></button></li>
			<li><button></button></li>
		</ul>
		</nav>
		<header id="header">
		<div class="top">
			<h1>
				<a href="#" class="logo">서울미술관</a>
			</h1>
			<div class="top_menu">
				<ul class="clear">
					<li><a href="auth/login">로그인</a></li>
					<li><a href="auth/signup">회원가입</a></li>
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
						<li><a href="board/list">문의 및 답변</a></li>
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
		<section id="main_visual">
		<div class="roll_img">
			<ul class="visual_box">
				<li><img src="resources/images/main_visual_01.png" /></li>
				<li><img src="resources/images/main_visual_02.png" /></li>
			</ul>
		</div>
		</section>
		<section id="info">
		<div class="title clear">
			<h2>NOW EXHIBITION</h2>
			<h3>서울미술관의 현재 전시중인 작품들</h3>
		</div>
		<article class="clear">
		<div class="art">
			<img src="resources/images/art1.png" alt="보통의 거짓말">
			<button class="over"></button>
			<div class="txt">
				<h4>보통의 거짓말 Ordinary Lie</h4>
				<p>현대 사회는 ‘거짓말의 시대’라고 해도 과언이 아닙니다. 성공을 위해 하는 ‘거짓말’은 잘못이 아니라
					‘처세술’이라고 포장됩니다. 매일 새롭게 만들어지는 ‘가짜 뉴스’는 ‘숭고한 목적’을 위한 필연적인 ‘전략’으로
					합리화됩니다. 어릴 적, ‘거짓말’은 분명 눈물을 쏙 뺄 정도로 혼날 ‘나쁜 일’이었는데, 어느샌가 ‘거짓말’은 우리의
					삶을 가득 채운 필요 불가결한 존재가 되었습니다.</p>
			</div>
		</div>
		<div class="art">
			<img src="resources/images/art2.png" alt="세상의 끝과 부재중 통화">
			<div class="txt">
				<h4>세상의 끝과 부재중 통화</h4>
				<p>
					서울미술관에서열리는
					<세상의 끝과 부재중 통화@서울미술관>은 설은아 작가의 개인전 프로젝트로, 아날로그전화라는매개체를통해
					관람객들이 ‘차마 전달하지 못한 이야기’를 발화할 수있는 흥미로운 기회가 될 것이다. 특히 서울미술관에서 진행되는 이번
					프로젝트는 작가의 초기작품인 <와니와 준하>-<4인용 식탁>-<주홍글씨>에서 연작되었던
					‘메아리’의 개념 또한 감상 할 수 있으며, ‘차마 전달하지 못한 이야기’가 과거의 온라인 공간을 넘어 현재의 오프라인
					공간에서 어떻게 이어지고 있는지를 확인할 수 있을 것이다.
				</p>
			</div>
			<button class="over"></button>
		</div>
		</article> </section>
		<section id="rent">
		<div class="rent_info">
			<div class="left">
				<span class="line"></span>
				<h2>대관안내</h2>
				<h3>
					석파정 서울미술관을<br />각종 세미나 및 전시회 등으로 이용하세요.
				</h3>
			</div>
			<div class="right">
				<article class="clear">
				<div class="room">
					<div class="img">
						<span>석파정</span>
					</div>
					<button></button>
				</div>
				<div class="room">
					<div class="img">
						<span>미술관</span>
					</div>
					<button></button>
				</div>
				</article>
			</div>
		</div>
		</section>
		<section id="samkids">
		<div class="inner">
			<div class="title">
				<h2>SAM KIDS</h2>
				<h3>
					아이들의 눈높이에 맞춘 감상 프로그램과 다양한 창작활동으로<br />구성된 서울미술관 샘키즈는 어린이들이 이해하기
					어려운 미술작품을 자율적으로 감상할 수 있도록 도와주는 고품격 교육 프로그램입니다.
				</h3>
				<button>샘키즈 신청하기</button>
			</div>
			<div class="samkids_img">
				<div>
					<img src="resources/images/samkids_img_01.png" widt="100%" height="100%"
						alt="샘키즈활동사진">
				</div>
				<div>
					<img src="resources/images/samkids_img_02.png" widt="100%" height="100%"
						alt="샘키즈활동사진">
				</div>
				<div>
					<img src="resources/images/samkids_img_03.png" widt="100%" height="100%"
						alt="샘키즈활동사진">
				</div>
				<div>
					<img src="resources/images/samkids_img_04.png" widt="100%" height="100%"
						alt="샘키즈활동사진">
				</div>
			</div>
		</div>
		</section>
		<section id="notice">
		<div class="inner clear">
			<div class="boxs clear">
				<div class="box">
					<h4>서울미술관 이용 안내</h4>
					<span></span>
					<h5>
						<pre>
  화요일 ~ 일요일 (월요일 휴관)

  M1(본관) 10:00 ~ 18:00
  M2(신관) 및 석파정 11:00 ~ 17:00

  평일 2시간 / 주말 1시간 30분 무료주차 가능
              </pre>
					</h5>
				</div>
				<div class="box">
					<h4>통합검색</h4>
					<span></span>
					<h5>
						<pre>
  서울미술관에 대해
  궁금하신 점을 검색해보세요.
              </pre>
					</h5>
					<div class="search_box">
						<label for="sch" name="search"></label> <span></span> <input
							type="text" id="sch" name="search">
					</div>
				</div>
				<button class="online_reserve"></button>
			</div>
			<div class="notice_box">
				<div class="tab">
					<ul class="clear">
						<li class="on"><button>공지사항</button></li>
						<li><button>이벤트</button></li>
					</ul>
				</div>
				<div class="list">
					<ul>
						<li class="clear"><span><a href="#"
								title="석파정 서울미술관 10월 운행안내">석파정 서울미술관 10월 운행안내</a></span> <span
							class="date">2019.10.01</span></li>
						<li class="clear"><span><a href="#"
								title="9월 추석 연휴 및 운영 안내">9월 추석 연휴 및 운영 안내</a></span> <span class="date">2019.09.02</span>
						</li>
						<li class="clear"><span><a href="#"
								title="전시 연장 안내 - 안봐도사는데지장없는전시 / 하비에르마틴">전시 연장 안내 -
									안봐도사는데지장없는전시 / 하비에르마틴</a></span> <span class="date">2019.09.01</span></li>
						<li class="clear"><span><a href="#"
								title="석파정 임시 휴관 안내(7월 9일~12일)">석파정 임시 휴관 안내(7월 9일~12일)</a></span> <span
							class="date">2019.06.28</span></li>
						<li class="clear"><span><a href="#"
								title="석파정 임시 휴관 안내(7월 9일~12일)">석파정 임시 휴관 안내(7월 9일~12일)</a></span> <span
							class="date">2019.06.28</span></li>
						<li class="clear"><span><a href="#"
								title="석파정 임시 휴관 안내(7월 9일~12일)">석파정 임시 휴관 안내(7월 9일~12일)</a></span> <span
							class="date">2019.06.28</span></li>
						<li class="clear"><span><a href="#"
								title="석파정 임시 휴관 안내(7월 9일~12일)">석파정 임시 휴관 안내(7월 9일~12일)</a></span> <span
							class="date">2019.06.28</span></li>
						<li class="clear"><span><a href="#"
								title="석파정 임시 휴관 안내(7월 9일~12일)">석파정 임시 휴관 안내(7월 9일~12일)</a></span> <span
							class="date">2019.06.28</span></li>
						<li class="clear"><span><a href="#"
								title="석파정 임시 휴관 안내(7월 9일~12일)">석파정 임시 휴관 안내(7월 9일~12일)</a></span> <span
							class="date">2019.06.28</span></li>
						<li class="clear"><span><a href="#"
								title="석파정 임시 휴관 안내(7월 9일~12일)">석파정 임시 휴관 안내(7월 9일~12일)</a></span> <span
							class="date">2019.06.28</span></li>
					</ul>
				</div>
			</div>
		</div>
		</section>
		<section id="contact">
		<div class="inner clear">
			<div class="left">
				<span class="line"></span>
				<h2>오시는 길</h2>
				<h3>
					110-817<br />서울특별시 종로구 부암동 201번지<br />서울특별시 종로구 부암동 창의문로 11길 4-1
				</h3>
				<div class="info"></div>
			</div>
			<div class="right">
				<div id="map">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3161.3084374951313!2d126.96066491558909!3d37.59489933026047!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2ac2bfa5859%3A0xf35fbdd71f0087b5!2z7ISc7Jq466-47Iig6rSA!5e0!3m2!1sko!2skr!4v1575956633212!5m2!1sko!2skr"
						width="600" height="450" frameborder="0" style="border: 0;"
						allowfullscreen=""></iframe>
				</div>
			</div>
		</div>
		</section>
		<footer id="footer">
		<div class="inner">
			<div class="left">
				<div class="top">
					<ul class="clear">
						<li><a href="#">회사소개</a></li>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">이용약관</a></li>
					</ul>
				</div>
				<div class="bottom">
					<pre>
서울특별시 종로구 부암동 201번지　　　　대표전화 :  <a href="tel:02-395-0100">02-395-0100</a>　　　　이메일 : <a
							href="mailto:gpal4434@naver.com" target="_blank">gpal4434@naver.com</a>
CopyRight 2019 ⓒ 김혜미. All Rights Reserved.
            </pre>
				</div>
			</div>
			<div class="right">
				<div class="top">
					<ul class="clear">
						<li><a href="https://www.facebook.com/seoulmuseum.buam/"
							target="_blank" title="페이스북"></a></li>
						<li><a href="https://twitter.com/seoul_museum"
							target="_blank" title="트위터"></a></li>
						<li><a href="http://pf.kakao.com/_MxaUij" target="_blank"
							title="카카오채널"></a></li>
						<li><a
							href="https://www.youtube.com/channel/UCvXQcbVXOUeEGo9wlTkMQjA"
							target="_blank" title="유튜브"></a></li>
					</ul>
				</div>
				<div class="bottom">
					<select name="site" id="site">
						<option value="FamilySite"><a href="#">Family Site</a></option>
						<option value="석파정"><a href="#">석파정</a></option>
						<option value="서울시립미술관"><a href="#">서울시립미술관</a></option>
						<option value="서울특별시청"><a href="#">서울특별시청</a></option>
					</select>
				</div>
			</div>
		</div>
		</footer>
	</div>
	<script>
  $('.samkids_img').bxSlider({
    auto: true,
    autoControls: false,
    stopAutoOnClick: false,
    pager: false
    });
  $('.visual_box').bxSlider({
    auto: true,
    autoControls: false,
    pager: true,
    // slideWidth: 1024
    });
  </script>
</body>
</html>