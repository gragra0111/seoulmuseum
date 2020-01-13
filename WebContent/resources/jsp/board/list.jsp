<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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