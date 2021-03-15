<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>MyPet::마이펫 소개</title>
	
<style>

    /* content */
    #content{
        width: 100%;
        margin: 0px auto;
       margin-top: 180px;
        /* padding: 20px 50px; */
        /* border: 1px solid rgb(230,229,235); */
        
        height: 1200px;
        padding: 0 !important;
        border: 1px solid transparent !important;
        
        font-family: NanumSquare;
       
        /* margin-right: px; */
    }

    /* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
    #content{
        height: 1600px;
        
    }
    
    .section1 {
    	/* background-image: url('/mypet/resources/images/introduce/intro1.jpg'); */
	/* background-size: cover;
	background-position: 50% 50%; */
	height: 800px;
    width: 100%;
    }
    
    .introtxt {
    
    }
    
    .txt1 {
      position: absolute;
    top: 500px;
    font-weight: bold;
    font-size: 35px;
    letter-spacing: -2px;
    padding-left: 30px;
    }
    
    .txt2 {
        position: absolute;
    top: 610px;
    letter-spacing: -2px;
    padding-left: 31px;
    }
    
    .section2 {
    	
    	
    }
    
    .intro2 {
    	/* border-top-right-radius: 50%;
    	border-bottom-right-radius: 50%; */
    	border-radius: 50%;
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
	
	<div class="section1">
		<div><img src="/mypet/resources/images/introduce/intro1_1.jpg" style="width: 100%; margin-bottom: 15px;" class="intro1"></div>
		<div class="introtxt txt1">사지않고 입양하는 문화가<br>유기 동물에게 더 나은 내일을 선물합니다.</div>
		<div class="introtxt txt2">마이펫은 유기 동물 입양을 장려합니다.<br>새 가족을 맞이하는 여러분의 시작을 마이펫이 함께하겠습니다.</div>
	
	</div>

	<!-- 서버작업 어느정도 마무리하고 진행하기.. -->
	<!-- <div class="section2">
		<div><img src="/mypet/resources/images/introduce/intro2.jpg" style="width: 400px; margin-bottom: 15px;" class="intro2"></div>
	</div> -->
	
	
	
	
	
	
	
	
	
	
	
	
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
	</script>
</div>
<!-- content -->





