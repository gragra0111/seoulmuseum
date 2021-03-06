<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<script type="text/javascript" language="javascript">
	$(function() {
		var selectTarget = $('.selectbox select');
		selectTarget.change(function() {
			var select_name = $(this).children('option:selected').text();
			$(this).siblings('label').text(select_name);
		});
	});
	
    // 아이디
    function validate_id() {
      var re_id = /^[a-z]+[a-z0-9]{4,13}$/g; //아이디 유효성검사 정규식

      var id = document.getElementById("in_id");
      var str = document.getElementsByClassName("warn");

      if(!check(re_id, id)){
        var id_fail = "첫글자 영문(소문자)+숫자 4~13자로 입력하세요.";

        str[0].innerText = id_fail;
        str[0].style.display = 'block';
        str[0].className = "warn";

        id.focus();
      }else{
        var id_success = "사용 가능한 ID입니다.";

        str[0].innerText = id_success;
        str[0].style.display = 'block';
        str[0].className += " green";
      }
    }

    // 비밀번호
    function validate_pw() {
      var re_pw = /^(?=.*[a-zA-Z0-9])(?=.*[~!@#$%^*]).{8,15}$/;  //패스워드 유효성검사 정규식

      var pw1 = document.getElementById("in_pw1");
      var str = document.getElementsByClassName("warn");


      if(!check(re_pw, pw1)){
        var pw_fail = "영문, 숫자, 특수문자를 조합하여 8~15자로 입력하세요.";

        str[1].innerText = pw_fail;
        str[1].style.display = 'block';
      }else{
        str[1].style.display = '사용 가능합니다.';
      }
    }

    // 이름
    function validate_name() {
      var re_name = /\s/g; // 띄어쓰기 정규식

      var name = document.getElementById("in_name");
      var str = document.getElementsByClassName("warn");

      if(check(re_name, name)){
        var name_fail = "공백없이 입력하세요.";

        str[2].innerText = name_fail;
        str[2].style.display = 'block';
        str[2].className = "warn";
      }else{
        if(name.value.length >= 2){
          var name_success = "사용 가능합니다."

          str[2].innerText = name_success;
          str[2].style.display = 'block';
          str[2].className += " green";
        }else{
          var name_num = "두 글자 이상 입력하세요."

          str[2].innerText = name_num;
          str[2].style.display = 'block';
          str[2].className = "warn";
        }
      }
    }

    // 휴대폰번호
    function validate_phone() {
      var re_phone = /[^0-9]/g; // 숫자만 정규식

      var phone = document.getElementById("in_phone");
      var str = document.getElementsByClassName("warn");

      if(check(re_phone, phone)){
        var phone_fail = "숫자만 입력하세요.";

        str[3].innerText = phone_fail;
        str[3].style.display = 'block';
        str[3].style.className = 'warn';
      }else{
        if(phone.value.length > 11){
          var phone_num = "정확한 번호를 입력하세요.";

          str[3].innerText = phone_num;
          str[3].style.display = 'block';
          str[3].className = 'warn';
        }else if(phone.value.length < 11){
            var phone_num = "정확한 번호를 입력하세요.";

            str[3].innerText = phone_num;
            str[3].style.display = 'block';
            str[3].className = 'warn';
        }else{
          var phone_success = "사용 가능합니다.";

          str[3].innerText = phone_success;
          str[3].style.display = 'block';
          str[3].className += ' green';
        }
      }
    }

    // 이메일 셀렉트
    function setEmail(emailValue){
      var email_id = document.getElementById("in_email1");
      var email_addr = document.getElementById("in_email2");

      if(emailValue == "notSelected"){
        email_addr.readOnly = false;
        email_addr.value = "";
        email_addr.focus();
      }
      else{
        email_addr.readOnly =  true;
        email_addr.value = emailValue;
      }
    }

    // 이메일
    function validate_email1() {
      var re_email1 = /^[a-z]+[a-z0-9]{4,13}$/g;
      var email1 = document.getElementById("in_email1");
      var str = document.getElementsByClassName("warn");

      if(!check(re_email1, email1)){
        var email1_fail = "올바른 이메일 주소를 입력하세요.";

        str[4].innerText = email1_fail;
        str[4].style.display = 'block';
        str[4].className = 'warn';
      }else{
        var email1_success = "사용 가능합니다.";

        str[4].innerText = email1_success;
        str[4].style.display = 'block';
        str[4].className += ' green';
      }
    }
    // 이메일 주소
    function validate_email2() {
      var re_email2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      var email2 = document.getElementById("in_email2");
      var str = document.getElementsByClassName("warn");
      var email_addr = document.getElementById("email_select").value;

      if(!check(re_email2, email2)){
        var email2_fail = "올바른 이메일 주소를 입력하세요.";

        str[4].innerText = email2_fail;
        str[4].style.display = 'block';
        str[4].className = 'warn';
      }else{
        var email2_success = "사용 가능합니다.";

        str[4].innerText = email2_success;
        str[4].style.display = 'block';
        str[4].className += ' green';
      }
    }


    function check(re, what) {
     if(re.test(what.value)) {
         return true;
     }else{
       // what.value = ""; // 틀린부분 delete
       // what.focus(); // 틀린부분에 focus
     }
   }

   function esential(_ele, str) {
     var empty = _ele.value;
     var str = _ele.parentNode.getElementsByClassName('warn')[0];

     if(empty.length == 0){
       str.style.display = 'block';
     }
   }

   function duplication() { // 비밀번호 확인
     var pw1 = document.getElementById('in_pw1').value;
     var pw2 = document.getElementById('in_pw2').value;

     var str = document.getElementsByClassName("warn")[1];

     if(pw1 === pw2){
       if(pw1 == "" && pw2 == ""){
         str.style.display = 'none';
         return false;
       }
       str.style.display = 'block';
       str.innerText = '비밀번호가 일치합니다.';
       str.className += " green";
     }else{
       str.style.display = 'block';
       str.innerText = '비밀번호가 일치하지 않습니다.';
       str.className = "warn";
     }
   }

   // ajax POST
   function submitUserInfo() {
     var param_id = document.getElementById("in_id").value;
     var param_pw = document.getElementById("in_pw2").value;
     var param_name = document.getElementById("in_name").value;
     var param_year = document.getElementById("in_year").value;
     var param_month = document.getElementById("in_month").value;
     var param_mobile = document.getElementById("in_phone").value;
     var param_day = document.getElementById("in_day").value;
     var param_birth = param_year + param_month + param_day;
     var param_solar = document.getElementById("in_solar").value;
     var param_sex;
     var param_email1 = document.getElementById("in_email1").value;
     var param_email2 = document.getElementById("in_email2").value;
     var param_email = param_email1 + "@" + param_email2;

     var radio_chk = document.getElementsByName("radio_sex");
     var cnt = 0;
     for(var i=0; i<radio_chk.length; i++){
       if(radio_chk[i].checked == true){
         param_sex = radio_chk[i].value;
         cnt ++;
       }
     }

     GF.ajax.post(
       "/auth/createUser",
       {
         id : param_id,
         password : param_pw,
         name : param_name,
         birth : param_birth,
         isSolar : param_solar,
         sex : param_sex,
         mobile : param_mobile,
         email : param_email
       },
       function(result){
         alert('success!');
       },
       function(){
         alert('정확한 정보를 입력해주세요.');
       }
     );
    }

	$(document).ready(function() {
	});
	</script>

		<div class="inner">
			<header>
			<h1>서울미술관</h1>
			</header>
			<section>
			<h2>서울미술관의 모든 서비스를 이용해보세요.</h2>
			<div class="form">
				<span class="title star">계정 아이디</span>
        <input type="text" placeholder="첫글자 영문(소문자)+숫자 4~13자" id="in_id" onkeyup="validate_id()" onfocusout="esential(this)">
        <span class="warn">필수 입력값입니다.</span>
			</div>
			<div class="form pw">
				<span class="title star">비밀번호</span>
        <input type="password" placeholder="영문, 숫자, 특수문자(~,!,@,$,^,*) 8~15자로 대소문자 구분" id="in_pw1" onfocusout="esential(this)" onkeyup="validate_pw()">
        <input type="password" placeholder="비밀번호 확인" id="in_pw2" onfocusout="esential(this)" onkeyup="duplication()">
        <span class="warn">필수 입력값입니다.</span>
			</div>
			<div class="form">
				<span class="title star">성명</span> <input type="text"
					placeholder="띄어쓰기 없이 입력" id="in_name" onfocusout="esential(this)" onkeyup="validate_name()"> <span class="warn">필수
					입력값입니다.</span>
			</div>
			<div class="form birth">
				<span class="title star">생년월일</span>
				<div class="clear">
					<input type="number" placeholder="YYYY(4자)" id="in_year">
					<div class="selectbox">
						<label for="in_month">월</label>
            <select id="in_month">
							<option value="월" hidden>월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
					</div>
					<div class="selectbox">
						<label for="in_day">일</label> <select id="in_day">
							<option value="일" hidden>일</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
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
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</div>
					<div class="selectbox">
						<label for="in_sex">양/음</label> <select id="in_solar">
							<option value="양/음" hidden>선택</option>
							<option value="true">양력</option>
							<option value="false">음력</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form sex">
				<span class="title">성별</span>
				<div class="radiobox clear">
					<div class="radio">
						<input type="radio" id="none" name="radio_sex" value=""> <label
							for="none">선택안함</label>
					</div>
					<div class="radio">
						<input type="radio" id="M" name="radio_sex" value="M"> <label for="M">남성</label>
					</div>
					<div class="radio">
						<input type="radio" id="W" name="radio_sex" value="W"> <label for="W">여성</label>
					</div>
				</div>
			</div>
			<div class="form">
				<span class="title star">휴대폰번호</span> <input type="number"
					placeholder="하이픈(-)을 제외하고 입력" id="in_phone" onkeyup="validate_phone()"> <span class="warn">필수
					입력값입니다.</span>
			</div>
			<div class="form email">
				<span class="title">이메일주소</span>
				<div class="clear">
					<input type="text" id="in_email1" onkeyup="validate_email1()"> <input type="text" id="in_email2" onkeyup="validate_email2()">
					<div class="selectbox">
						<label for="email">직접입력</label>
            <select id="email_select" onchange="setEmail(email_select.options[this.selectedIndex].value)">
							<option value="notSelected">직접입력</option>
							<option value="naver.com">네이버</option>
							<option value="daum.net">다음</option>
							<option value="gmail.com">지메일</option>
							<option value="nate.com">네이트</option>
						</select>
					</div>
				</div>
        <span class="warn">필수 입력값입니다.</span>
			</div>
			<button class="done" onclick="submitUserInfo();validate()">제출하기</button>
			</section>
