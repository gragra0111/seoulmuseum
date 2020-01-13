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
    // $(document).ready(function(){
    //   //작성자
    //   var bw_writer = document.getElementById('writer');
    //
    //   bw_writer.innerText = '작성자';
    //
    //   //작성일
    //   var today = new Date();
    //   var year = today.getFullYear();
    //   var month = (today.getMonth() + 1);
    //   var date = today.getDate();
    //   var bw_date = document.getElementById('date');
    //
    //   if (("" + month).length == 1) { month = "0" + month; }
    //   if (("" + date).length   == 1) { date   = "0" + date;   }
    //
    //   bw_date.innerText = year + '-' + month + '-' + date;
    // });


    function submitBoardWrite() {
      var bw_title = document.getElementById('in_title').value;
      var bw_detail = document.getElementById('in_detail').value;

      GF.ajax.post(
        "/board/createBoard",
        {
          title: bw_title,
          detail: bw_detail,
          writer: "작성자"
        },
        function(result) {
          alert("게시글 등록이 완료되었습니다.");
        },
        function(result) {
          alert("error! 게시글 등록에 실패하였습니다.");
        }
      );
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
        <h1>문의하기</h1>
        <h3>석파정 서울미술관에 대해 궁금하신 점을 작성해 주세요.</h3>
        <div class="board_write">
          <table>
            <caption>문의게시판 글쓰기</caption>
            <colgroup>
              <col width="13%">
              <col width="20.33%">
              <col width="13%">
              <col width="20.33%">
              <col width="13%">
              <col width="20.33%">
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">제목</th>
                <td colspan="5" class="input" id="title"><input type="text" id="in_title"></td>
              </tr>
              <tr>
                <th scope="row">작성자</th>
                <td id="writer"></td>
                <th scope="row">작성일</th>
                <td id="date"></td>
                <th scope="row">조회수</th>
                <td id="count"></td>
              </tr>
              <tr>
                <th scope="row">내용</th>
                <td colspan="5" class="input" id="detail"><textarea name="content" id="in_detail" cols="30" rows="10"></textarea></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="btns">
          <ul class="clear">
            <li><button class="cancle">취소</button></li>
            <li><button class="submit" onclick="submitBoardWrite()">등록</button></li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</body>
</body>
</html>
