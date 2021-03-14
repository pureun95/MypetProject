<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>MyPet::회원가입</title>

<style>

/* content */
#content {
	width: 1300px;
	margin: 0px auto;
	margin-top: 210px;
	padding: 20px 50px;
	/* border: 1px solid rgb(230,229,235); */
	border: 1px solid black;

	/* margin-right: px; */
}

/* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
#content {
	height: 1500px;
	font-family: NanumSquare;
	font-size: 16px;
	padding: 20px 180px;
	border: 1px solid transparent;
}

#contentnav {
	border: 1px solid black;
	width: 1200px;
	height: 100px;
	padding: 20px 20px;
}


/* 본문 */

.maintitle {
	/* border: 1px solid black; */
	display: block;
	text-align: center;
	margin-top: 130px;
	margin-bottom: 40px;
	font-size: 30px;
	font-family: 'Jal_Onuel';
	/* font-family: 'NanumSquare';
        font-weight: bold; */
	color: #301b01;
}

.join_content {
	    width: 400px;
    margin: 5px auto;
    font-family: NanumSquare;
}

span {
	font-weight: bold;
	margin-bottom: 5px;
}

input[type="text"], input[type="password"] {
	
	margin-top: 5px;
	    height: 40px;
}

.subtxt {
	font-size: 13px;
	color: #444;
	margin-bottom: 15px;
}

.custom-select {
	width: 32%;
	margin-top: 5px;
	height: 40px;
    outline: none;
	border: 1px solid #ccc;
    border-radius: 4px;
}

#address_num {
	width: 50%;
    float: left;
    margin-bottom: 6px;
}

#btnaddress {
	float : left;
	margin-left: 8px;
    position: relative;
    top: 5px;
    height: 40px;
}

#btn_register {
	display: inline-block;
	margin-top: 20px;
	width: 100%;
	background-color: #B27208;
	color: white;
	font-family: 'Jal_Onuel';
	height: 5rem;
	font-size: 16px;
}

#btn_mail {
margin-left: 8px;
    position: relative;
    top: 5px;
    height: 40px;
}

#email {
	width: 77%;
    float: left;
}



/* 채팅 */
.chaticon {
	/* border: 1px solid black; */
	width: 70px;
	height: 70px;
	position: fixed;
	right: 5px;
	bottom: 5px;
	/* margin-left: 30px; */
	background-image: url('/mypet/resources/images/chat/chatimg.png');
	background-size: cover;
	background-position: 50% 50%;
	/* margin-right: 10px; */
	z-index: 100;
	cursor:pointer;
}

</style>

<div id="content">


	<div class="maintitle">회원가입</div>

	<div class="join_content">
		
		<form id="join_form" method="POST" action="/#">

			<!-- 시작 -->

			<div class="infomlist">

				<span>아이디</span> 
				<input type="text" class="form-control form-weight" id="user_id" name="user_id">
				<div class="subtxt">4자~12자리의 영문자, 숫자 / @,#$등 특수문자는 제외</div>	
					
				<span>비밀번호</span> 
				<input type="password" class="form-control form-weight" id="user_pw" name="user_pw"> 
				<div class="subtxt">영문 대문자, 소문자, 숫자, 특수문자를 3가지 이상 사용하여<br> 8자 이상,
   20자 이하로 설정해주세요.</div>
				
				<span>비밀번호확인</span> 
				<input type="password" class="form-control form-weight" id="user_pw_check" name="user_pw_check"> 
				<div class="subtxt">비밀번호를 다시 한번 입력해주세요.</div>

				<span>이름</span> 
				<input type="text" class="form-control form-weight" id="user_name" name="user_name" style="margin-bottom: 15px;"> 
					
				<span>생년월일</span> 
				<div style="margin-bottom: 15px;">						
				<select name="birth_year" id="birth_year" title="년도" class="custom-select"></select>
				<select name="birth_month" id="birth_month" title="월" class="custom-select"></select>
				<select name="birth_day" id="birth_day" title="일" class="custom-select"></select>
				</div>
				
				<span>주소</span> 
				<div>
				<input type="text" class="form-control search-text" name="address_num" id="address_num"> 
				<input type="button" id="btnaddress" class="btn btn-default" onClick="address_popup();" value="주소검색">					
				</div>
				
				<!-- <div> -->
				<input type="text" id="address1" name="address1" class="form-control" placeholder="도로명주소">
				<input type="text" id="address2" name="address2" class="form-control" placeholder="상세주소를 입력해주세요." style="margin-bottom: 15px;">
				<!-- </div> -->
	
				<span>이메일</span> 
				<div style="clear: both;"></div>
				<input	type="text" class="form-control search-text" name="email" id="email" placeholder="인증 가능한 e-mail 주소를 입력해주세요." >
				<input type="button" id="btn_mail" class="btn btn-default" onClick="mail_check();" value="인증하기">
				<div style="clear: both;"></div>
				<div class="promotion"><input type="checkbox" name="promotion" id="promotion"
				value="1" style="margin-bottom: 15px;"> <label for="promotion" style="font-size: 13px; font-weight: normal">정보/이벤트 메일 수신에 동의합니다.</label></div>
	
				
				<span>휴대전화</span>
				<input type="text" class="form-control tel" id="user_tel"
				maxlength=11 name="user_tel" placeholder="'-'을 제외하고 입력해주세요." >
					
			</div>

			<input type="submit" class="btn btn-outline-secondary" type="button" id="btn_register" value="가입하기">

		</form>
		<!-- join_form -->


	</div>
	<!-- join_content -->

<div class="chaticon" id="chaticon"></div>

<script>

/* 채팅 */
var chaticon = document.getElementById("chaticon");

var _width = '350';
var _height = '600';

// 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기.. 오른쪽 아래 하단에 두는건..? right=0 bottom=0으로 두는데 왜 안되지??
var _left = Math.ceil(( window.screen.width - _width )/2);
var _top = Math.ceil(( window.screen.width - _height )/2); 

chaticon.onclick = function() {

 	window.open("/mypet/member/chat.action", "a", "width=350, height=600"); 

}

/* 생년월일 select box */
 $(document).ready(function () {
    setDateBox();
  });

  // select box 연도 , 월 표시
  function setDateBox() {
    var dt = new Date();
    var birth_year = "";
    var com_year = dt.getFullYear();

    // 발행 뿌려주기
    $("#birth_year").append("<option value=''>년도</option>");

    // 올해 기준으로 -50년부터 +1년을 보여준다.
    for (var y = (com_year - 50); y <= (com_year + 1); y++) {
      $("#birth_year").append("<option value='" + y + "'>" + y + "</option>");
    }

    // 월 뿌려주기(1월부터 12월)
    var birth_month;
    $("#birth_month").append("<option value=''>월</option>");
    for (var i = 1; i <= 12; i++) {
      $("#birth_month").append("<option value='" + i + "'>" + i + "</option>");
    }

    // 일 뿌려주기(1일부터 31일)
    var birth_day;
    $("#birth_day").append("<option value=''>일</option>");
    for (var i = 1; i <= 31; i++) {
      $("#birth_day").append("<option value='" + i + "'>" + i + "</option>");
    }

  }
</script>

</div>
<!-- content -->