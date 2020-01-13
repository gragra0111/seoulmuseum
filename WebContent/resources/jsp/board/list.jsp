<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <script type="text/javascript">
    // var bw_writer = document.getElementById('writer');
    //
    // bw_writer.innerText = '작성자';
    var pageCount = 3;
	var blockCount = 3;
	var totalPage = Math.ceil(list.length / pageCount);
	var totalBlock = Math.ceil(totalPage / blockCount);
	var pagination = document.getElementsByClass('paging');
	var testTable = document.getElementById('testTable').querySelector('tbody');
	var renderTableAndPagination = function(page = 1) {
	    renderTable(page);
	    renderPagination(page);
	};
	var renderTable = function(page) {
	    var startNum = (pageCount * (page - 1));
	    var endNum = ((pageCount * page) >= list.length) ? list.length : (pageCount * page);

	    var html = '';
	    for (var index = startNum; index < endNum; index++) {
	        html += '<tr><td><input type="checkbox"></td><td>' + list[index].num + '</td><td>' + list[index].content + '</td></tr>';
	    }

	    testTable.innerHTML = html;
	};
	var renderPagination = function(page) {
	    var block = Math.floor((page-1)/blockCount)+1;
	    var startPage = ((block-1)*blockCount)+1;
	    var endPage = ((startPage + blockCount -1) > totalPage) ? totalPage : (startPage + blockCount -1);

	    var paginationHTML = '';

	    if (page !== 1) paginationHTML += "<a style='cursor:pointer' class='first_page'>First...</a>";
	    if (block !== 1) paginationHTML += "<a style='cursor:pointer' class='back_page'>Prev</a>   ";

	    for (var index = startPage; index <= endPage; index++) {
	        paginationHTML += (parseInt(page) === parseInt(index)) ?
	            "| <a style='color:#ff8400'>" + index + "</a> |" : "| <a style='cursor: pointer' class='go_page' data-value='" + index + "'>" + index + "</a> |";
	    }

	    if (block < totalBlock) paginationHTML += "<a style='cursor:pointer' class='next_page'>    Next</a>";
	    if (page < totalPage) paginationHTML += "<a style='cursor:pointer' class='last_page'>  ...Last</a>";

	    pagination.innerHTML = paginationHTML;
	    addEventPagination(startPage, endPage);
	};
	var addEventPagination = function(startPage, endPage){
	    if (!!document.querySelector(".first_page")) {
	        document.querySelector(".first_page").addEventListener('click', () => {
	            renderTableAndPagination(1);
	        });
	    }

	    if (!!document.querySelector(".back_page")) {
	        document.querySelector(".back_page").addEventListener('click', () => {
	            renderTableAndPagination(startPage-1);
	        });
	    }

	    document.querySelectorAll(".go_page").forEach(goPage => {
	        goPage.addEventListener('click', e => {
	            renderTableAndPagination(parseInt(e.target.getAttribute('data-value')));
	        });
	    });

	    if (!!document.querySelector(".next_page")) {
	        document.querySelector(".next_page").addEventListener('click', () => {
	            renderTableAndPagination(endPage + 1);
	        });
	    }

	    if (!!document.querySelector(".last_page")) {
	        document.querySelector(".last_page").addEventListener('click', () => {
	            renderTableAndPagination(totalPage);
	        });
	    }
	};
	renderTableAndPagination();
    
    
    
    function submitBoardWrite() {
      var bw_title = document.getElementById('title');
      var bw_writer = document.getElementById('writer');

      // bw_writer.innerText = '작성자';
    }

    function moveWrite() {
      //location.href = "/board/write";
    	GF.ajax._html('board/write');
    }
    
    function moveDetail() {
   		GF.ajax._html('board/detail');
   	}    
    
    $(document).ready(function (){
	    function boardList() {
	    	GF.ajax.get(
	   			"board/getBoardList", null,
	    		function(result){
	    			var list = result.hy.data;
	    			var _h = "";
	    			
	    			for(var i=0; i<list.length; i++) {
						console.log(list[i].date);
		    			var timestamp = list[i].date;
		    			list[i].date = new Date(timestamp);
		    			
		    			var year = list[i].date.getFullYear();
		    		    var month = (list[i].date.getMonth() + 1);
		    		    var date = list[i].date.getDate();
		    		    
		    		    if (("" + month).length == 1) { month = "0" + month;}
		    		    if (("" + date).length   == 1) { date   = "0" + date;}
		    		    
		    		    list[i].date = year + '-' + month + '-' + date;
		    			
	    				_h += "<tr>";
	    				_h += "<td>" + list[i].no + "</td>";
	    				_h += "<td onclick='moveDetail(" + list[i].no + ")'>" + list[i].title + "</td>";
	    				_h += "<td>" + list[i].writer + "</td>";
	    				_h += "<td>" + list[i].date + "</td>";
	    				_h += "<td>" + list[i].count + "</td>";
	    				_h += "</tr>";
	    			}
	    			$('#board_list').html(_h);
	    		},
				function(result){
	    		}
	    	);
    	}
	    
	    
	    // init.
	    boardList();
    });
    </script>
    
    <div class="board board_list">
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
            <tbody id="board_list">
              <!-- <tr>
                <td id="no"></td>
                <td id="title"></td>
                <td id="writer"></td>
                <td id="date"></td>
                <td id="count"></td>
              </tr> -->
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