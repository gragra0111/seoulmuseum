<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
          writer: "임시작성자"
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
    
    <div class="board_list">
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