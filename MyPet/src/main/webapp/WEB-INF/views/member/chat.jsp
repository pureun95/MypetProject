<!-- 여기서부터 -->
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- jQuery, bootstrap CDN -->
	<script src="/mypet/resources/js/jquery-1.12.4.js"></script>
	<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script> msie 문제 해결
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
	<script src="/mypet/resources/js/bootstrap.js"></script>
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script> -->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css"> -->
	<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
	<!-- Zebra-Dialog CDN -->
	<!-- <script src="resources/js/dialog/zebra_dialog.src.js"></script> -->
	<!-- <link rel="stylesheet" href="resources/css/dialog/zebra_dialog.css" type="text/css"/> -->
	<!-- SocketJS CDN -->
	<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
	
	<title>Chatting page</title>
</head>
<body>
	<h1>Chatting Page (id: ${userid})</h1>
	<div>
		<input type="button" id="chattinglistbtn" value="채팅 참여자 리스트">
	</div>
	<br>
	<div>
		<div>
			<input type="text" id="message"/>
    		<input type="button" id="sendBtn" value="전송"/>
    	</div>
    	<br>
    	<div class="well" id="chatdata">
    		<!-- User Session Info Hidden -->
    		<input type="hidden" value='${userid}' id="sessionuserid">
    	</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
	$("#chattinglistbtn").click(function(){
		/* var infodialog = new $.Zebra_Dialog('<strong>Message:</strong><br><br><p>채팅방 참여자 리스트</p>',{ */
			title: 'Chatting List',
			type: 'confirmation',
			print: false,
			width: 260,
			buttons: ['닫기'],
			onClose: function(caption){
				if(caption == '닫기'){
					//alert('yes click');
				}
			}
		});
    });
});
</script>
<script type="text/javascript">
//websocket을 지정한 URL로 연결
var sock= new SockJS("<c:url value="/echo"/>");
//websocket 서버에서 메시지를 보내면 자동으로 실행된다.
sock.onmessage = onMessage;
//websocket 과 연결을 끊고 싶을때 실행하는 메소드
sock.onclose = onClose;
$(function(){
	$("#sendBtn").click(function(){
		console.log('send message...');
        sendMessage();
    });
});
        
function sendMessage(){      
	//websocket으로 메시지를 보내겠다.
  	sock.send($("#message").val());     
}
            
//evt 파라미터는 websocket이 보내준 데이터다.
function onMessage(evt){  //변수 안에 function자체를 넣음.
	var data = evt.data;
	var sessionid = null;
	var message = null;
	
	//문자열을 splite//
	var strArray = data.split('|');
	
	for(var i=0; i<strArray.length; i++){
		console.log('str['+i+']: ' + strArray[i]);
	}
	
	//current session id//
	var currentuser_session = $('#sessionuserid').val();
	console.log('current session id: ' + currentuser_session);
	
	sessionid = strArray[0]; //현재 메세지를 보낸 사람의 세션 등록//
	message = strArray[1]; //현재 메세지를 저장//
	
	//나와 상대방이 보낸 메세지를 구분하여 영역을 나눈다.//
	if(sessionid == currentuser_session){
		var printHTML = "<div class='well'>";
		printHTML += "<div class='alert alert-info'>";
		printHTML += "<strong>["+sessionid+"] -> "+message+"</strong>";
		printHTML += "</div>";
		printHTML += "</div>";
		
		$("#chatdata").append(printHTML);
	} else{
		var printHTML = "<div class='well'>";
		printHTML += "<div class='alert alert-warning'>";
		printHTML += "<strong>["+sessionid+"] -> "+message+"</strong>";
		printHTML += "</div>";
		printHTML += "</div>";
		
		$("#chatdata").append(printHTML);
	}
	
	console.log('chatting data: ' + data);
	
  	/* sock.close(); */
}
    
function onClose(evt){
	$("#data").append("연결 끊김");
}    
</script>
</html>
 --%>
 
 
 
 
 
 
 
 
 <!-- 후 여기부터.. -->
 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- jquery -->
<script src="/mypet/resources/js/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">


<title>MyPet::채팅하기</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: NanumSquare;
	font-size: 16px;
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.container {
	width: 350px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.card {
	margin: 20px auto;
	width: 340px !important;
	min-height: 550px !important;
	max-height: 550px !important;
	border-radius: 16px !important;
	box-shadow: rgba(81, 99, 120, 0.3) 0px 6px 60px 0px !important;
	overflow: hidden !important;
	animation: 0.25s ease-out 0s 1 normal none running jZyQVL !important;
}

.info {
	height: 100px;
	/* display: flex; */
	-webkit-box-align: center;
	align-items: center;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	color: white;
	background: linear-gradient(103deg, #FAB018 0%, rgb(255, 179, 38) 50%,
		#F6DA42) 100% center;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 6px 0px;
	z-index: 1;
	position: absolute;
	top: 0px;
	right: 0px;
	left: 0px;
	padding: 14px 15px;
	transform: translateZ(0px);
	font-family: 'Jal_Onuel';
}

.info span {
	font-size: 13px;
	font-family: 'Jal_Onuel';
}

.title {
	width: 100%;
	font-size: 16px;
	font-family: 'Jal_Onuel';
	font-weight: bold;
}

.send {
	position: static;
	bottom: 0px;
	right: 0px;
	left: 0px;
	/* z-index: 1; */
	transform: translateZ(0px);
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	min-height: 54px;
	border-top: 1px solid rgb(228, 228, 229);
	background-color: rgb(255, 255, 255);
	/* box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 6px 0px; */
	padding: 0;
}

.table-bordered>tbody>tr>td {
	border: 0;
}

.table-bordered {
	border: 0;
}

.chatfooter {
	width: 100%;
	min-height: 20px;
	max-height: 200px;
	line-height: 20px;
	font-size: 16px;
	letter-spacing: -0.1px;
	min-width: 0px;
	border: none;
	resize: none;
	margin: auto;
	padding-left: 0px;
	white-space: pre-wrap;
	overflow: auto;
	background-color: transparent;
	height: 50px;
	outline: none;
	white-space: pre-wrap;
	top: 10px;
	position: relative;
}

}
td .chatfooter {
	-webkit-box-align: left;
	align-items: left;
}

.messages {
	height: 75%;
	margin-top: 80px;
}

.sendBtn {
	width: 46px;
	display: flex;
	align-self: stretch;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	cursor: pointer;
	z-index: 20;
	outline: none;
	color: white;
	background-color: #B27208;
	top: 20px;
	position: relative;
	font-size: 13px;
	left: 14px;
}

#chatout {
	width: 30px;
	float: right;
	position: relative;
	top: -40px;
	cursor: pointer;
}

.title_admin {
	
}

.title_user {
	text-align: right;
}

.chat_title {
	font-weight: bold;
}

.chattime {
	font-size: 14px;
	margin-left: 5px;
	font-weight: normal;
}

.chat_content {
	margin-bottom: 20px;
	font-size: 14px;
	background-color: #F4F4F4;
	padding: 8px 8px;
	border-radius: 12px;
	width: fit-content;
	max-width: 260px;
}

.content_admin {
	
}

.content_user {
	text-align: left;
	margin-top: 5px;
	float: right;
}

#intochat {
position: absolute;
    z-index: 2;
    top: 65px;
    left: 55px;
    font-size: 13px;
    border: transparent;
    background-color: #B27208;
    color: white;
}
</style>
</head>
<body>
    <div class="container">
		<div class="card">
		
		<div class="col-sm-12 col-md-9"	style="padding-right: 0px; padding-left: 0px;">
		
		<div class="info">
					<div class="title">
						마이펫<span><img
							src="/mypet/resources/images/chat/chatimg.png"
							style="width: 20px; margin-left: 4px;"></span>
					</div>
					<span>보통 몇 분 내에 응답합니다.</span>
					<div>
						<img src="/mypet/resources/images/chat/outimg.png" id="chatout"
							name="chatout" onclick="closeSocket();"> <!-- onclick="onClose();"> -->
					</div>

				</div>
		
        <button type="button" onclick="openSocket();" class="btn btn-default" id="intochat">채팅 시작</button>
        <!-- <button type="button" onclick="closeSocket();">대회방 나가기</button> -->
        
        
        
        
        
        <!-- Server responses get written here -->
    <div id="messages" class = "messages" style="width: 100%; height: 380px; padding: 15px; overflow: auto;"> <!-- 기존class - content -->
    ${list.size()}
    
    
    </div>
    <!-- messages -->
        
        
        
        
        
        
        
        
        
        
        <div class="send">
			<table class="table table-bordered">
        		<tr>
        		 
					<td style="border-bottom-left-radius: 16px;"><input
						type="text" name="sender" id="sender" value="${sessionScope.id}"
						style="display: none;"></td>
						
					<td><input type="text" id="messageinput" placeholder="대화내용을 입력하세요." class="chatfooter" ></td>
					
					<td style="border-bottom-right-radius: 16px;"><input
						type="button" name="sendBtn" class="sendBtn btn" id="sendBtn" value="보내기" onclick="send();"></td>
						<!-- <td><button type="button" onclick="javascript:clearText();">대화내용 지우기</button></td> -->
				</tr>
				
        
        
        	</table>
        	<%-- System.out.println(${id}); --%>
        </div>
        <!-- send -->
        
        
        
    	<br/><br/><br/>
  		<!-- 메세지 입력 :  -->
        <%-- <input type="text" id="sender" value="${sessionScope.id}" style="display: none;">
        <input type="text" id="messageinput"> --%>
        <!-- <button type="button" onclick="send();">메세지 전송</button> -->
        <!-- <button type="button" onclick="javascript:clearText();">대화내용 지우기</button> -->
        <%-- System.out.println(${id}); --%>
    <!-- </div> -->
    
    
    
    </div>
    <!-- col-sm-12 col-md-9 -->
    </div>
    <!-- card -->
    </div>
    <!-- container -->
    
    
    
    
    
    
    
    
    
    
    <!-- websocket javascript -->
    <script type="text/javascript">
        var ws;
        var messages = document.getElementById("messages");
        
        function openSocket(){
            if(ws !== undefined && ws.readyState !== WebSocket.CLOSED ){
                writeResponse("WebSocket is already opened.");
                return;
            }
            //웹소켓 객체 만드는 코드
//            ws = new WebSocket("ws://localhost:8090/echo.do");
            //ws = new WebSocket("ws://localhost:8090/echo.action");
            ws = new WebSocket("ws://localhost:8090/mypet/member/echo.action");
            
            ws.onopen = function(event){
                if(event.data === undefined){
              		return;
                }
                writeResponse(event.data);
            };
            
            ws.onmessage = function(event){
                console.log('writeResponse');
                console.log(event.data)
                writeResponse(event.data);
            };
            
            ws.onclose = function(event){
                writeResponse("채팅 종료");
            }
            
        }
        
        
        //메시지 보내기
        function send(){
           // var text=document.getElementById("messageinput").value+","+document.getElementById("sender").value;
            var text = document.getElementById("messageinput").value+","+document.getElementById("sender").value;
            ws.send(text);
            text = "";
        }
        
        
        
        
        function closeSocket(){
            ws.close();
            self.close();
        }
        
        function writeResponse(text){
            messages.innerHTML += "<br/>"+text;
        }
        function clearText(){
            console.log(messages.parentNode);
            messages.parentNode.removeChild(messages)
      	}
        
        
        
        ////////////////////////////////////////////////////
        
        
        
  </script>
</body>
</html>
 