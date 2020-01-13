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
    // var bw_writer = document.getElementById('writer');
    //
    // bw_writer.innerText = '작성자';
    function submitBoardWrite() {
      var bw_title = document.getElementById('title');
      var bw_writer = document.getElementById('writer');

      // bw_writer.innerText = '작성자';
    }

    function moveWrite() {
      location.href = "/board/write";
    }

    </script>
</head>
<body>
  <div id="wrap" class="board_list">
    <nav>
      <ul class="nav">
        <li><button></button></li>
        <li><button></button></li>
        <li><button></button></li>
      </ul>
    </nav>
    <header id="header">
      <div class="top">
        <h1><a href="#" class="logo">서울미술관</a></h1>
        <div class="top_menu">
          <ul class="clear">
            <li><a href="#">로그인</a></li>
            <li><a href="#">회원가입</a></li>
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
              <li><a href="#">문의 및 답변</a></li>
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
    <section class="board_wrap">
      <div class="inner">
        <h1>문의게시판</h1>
        <h3>석파정 서울미술관에 대해 궁금하신 점을 올려주세요.</h3>
        <div class="board_table">
          <button class="write" onclick="moveWrite()">글쓰기</button>
          <table>
            <caption>서울미술관 문의게시판</caption>
            <colgroup>
              <col width="10%">
              <col width="45%">
              <col width="15%">
              <col width="20%">
              <col width="10%">
            </colgroup>
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col" class="left">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">작성일</th>
                <th scope="col">조회수</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td id="no">0</td>
                <td id="title">샘키즈 프로그램 관련 문의드립니다!</td>
                <td id="writer">애엄마</td>
                <td id="date">19-12-31</td>
                <td id="count">21</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="paging">
          <ul class="clear">
            <li><button>&lt;&lt;</button></li>
            <li><button>&lt;</button></li>
            <li class="on"><button>1</button></li>
            <li><button>2</button></li>
            <li><button>3</button></li>
            <li><button>&gt;</button></li>
            <li><button>&gt;&gt;</button></li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</body>
</html>
