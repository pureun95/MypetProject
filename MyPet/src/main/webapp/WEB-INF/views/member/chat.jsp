<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPet::채팅하기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">




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
	height: 70px;
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
	top: -80px;
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

.content {
	height: 75%;
	margin-top: 80px;
}

.sendicon {
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
</style>
</head>
<body>

	<div class="container">
		<div class="card">

			<div class="col-sm-12 col-md-9"
				style="padding-right: 0px; padding-left: 0px;">

				<div class="info">
					<div class="title">
						마이펫<span><img
							src="/mypet/resources/images/chat/chatimg.png"
							style="width: 20px; margin-left: 4px;"></span>
					</div>
					<span>보통 몇 분 내에 응답합니다.</span>
					<div>
						<img src="/mypet/resources/images/chat/outimg.png" id="chatout"
							name="chatout">
					</div>

				</div>

				<div class="content">
					<div id="output"
						style="width: 100%; height: 380px; padding: 15px; overflow: auto;">
						<div class="chat_admin">
							<div class="chat_title title_admin">
								<span><img src="/mypet/resources/images/chat/chatpic.png"
									style="width: 25px; margin-right: 4px; padding-bottom: 6px;"></span>마이펫<span
									class="chattime">11:56 PM</span>
							</div>
							<div class="chat_content content_admin">안녕하세요. 마이펫
								채팅서비스입니다. 무엇을 도와드릴까요?</div>
						</div>
						<!-- chat_admin -->

						<div class="chat_user">
							<div class="chat_title title_user">
								홍길동<span class="chattime">11:57 PM</span>
							</div>
							<div class="chat_content content_user">유기동물 신고는 어떻게 하나요?</div>
						</div>
						<!-- chat_user -->
					</div>
					<!--output  -->
				</div>
				<!-- content -->

				<div class="send">
					<table class="table table-bordered">
						<tr>
							<td style="border-bottom-left-radius: 16px;"><input
								type="text" name="message" id="message"
								placeholder="대화내용을 입력하세요." class="chatfooter"></td>
							<td style="border-bottom-right-radius: 16px;"><input
								type="button" name="sendicon" class="sendicon btn" value="보내기"></td>
						</tr>
					</table>
				</div>

			</div>

		</div>

	</div>
	<script>
		var chatout = document.getElementById("chatout");
		
		chatout.onclick = function() {
		 	self.close();
		}
	</script>
</body>
</html>