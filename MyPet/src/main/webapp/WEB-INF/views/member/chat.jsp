<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPet::채팅하기</title>




<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: "Poppins", sans-serif;
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	/* perspective: 1000px; */
}

.container {
	width: 350px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.card {
	margin-top: 20px;
	width: 340px !important;
	min-height: 550px !important;
	max-height: 550px !important;
	height: 80% !important;
	position: fixed !important;
	bottom: 25px !important;
	border-radius: 16px !important;
	background-color: transparent !important;
	box-shadow: rgba(81, 99, 120, 0.3) 0px 6px 60px 0px !important;
	/* z-index: 1000000000 !important; */
	overflow: hidden !important;
	animation: 0.25s ease-out 0s 1 normal none running jZyQVL !important;
	font-family: NotoSansKR, NotoSansJP, -apple-system, BlinkMacSystemFont,
		"Helvetica Neue", "맑은 고딕", "Yu Gothic", "Segoe UI", Roboto, system-ui,
		sans-serif !important;
}

.info {
	height: 80px;
	/* display: flex; */
	-webkit-box-align: center;
	align-items: center;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	font-size: 16px;
	font-weight: 600;
	color: white;
	background: linear-gradient(103deg, rgb(74, 38, 255) 0%,
		rgb(74, 38, 255) 50%, rgb(125, 38, 255)) 100% center;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 6px 0px;
	overflow: hidden;
	z-index: 1;
	position: absolute;
	top: 0px;
	right: 0px;
	left: 0px;
	padding: 14px 80px 14px 60px;
	transform: translateZ(0px);
}

.title {
	width: 100%;
	margin-top: 8px;
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
}

.chatfooter {
	width: 70%;
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
	z-index:20;
}
</style>
</head>
<body>

	<div class="container">
		<!-- <iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;"> -->
		<div class="card">


			<!-- <div class="info">
                <h1 class="title">마이펫</h1>
                <h3>보통 몇 분 내에 응답합니다.</h3>
                
            </div>
            <div class="content">
                
                <h3>보통 몇 분 내에 응답합니다.</h3>
                
            </div>
            <div class="send">
                
                <h3>보통 몇 분 내에 응답합니다.</h3>
                
            </div> -->


			<div class="content col-sm-12 col-md-9">



				<div class="info">
					<div class="title">마이펫</div>
					<div style="font-size:13px;">보통 몇 분 내에 응답합니다.</div>

				</div>


				<table class="table table-bordered">
					<!-- <tr>
                                
                                <td>
                                    
                                    <button type="button" id="btnDisconnect" class="btn btn-default" disabled>종료하기</button>
                                </td>
                            </tr> -->
					<div class="content">
						<tr>
							<td colspan="2">
								<!-- <div id="output" style="width: 100%; height: 300px; padding: 15px; overflow: auto;"></div> -->
								<div id="output"
									style="width: 100%; height: 100%; padding: 15px; overflow: auto;"></div>
							</td>
						</tr>
					</div>


				</table>

				<div class="send">
					<tr>
<!-- 						<td colspan="2"> -->
						<td>
							<!-- <input type="text" name="message" id="message" placeholder="대화내용을 입력하세요." class="form-control" disabled> -->
							<!-- <input type="text" name="message" id="message" placeholder="대화내용을 입력하세요." class="form-control"> -->
							<!-- <textarea data-ch-testid="messenger-footer-text-area" placeholder="메시지를 입력해주세요." class="chatfooter" style="height: 20px;"></textarea> -->
							<input type="text" name="message" id="message"
							placeholder="대화내용을 입력하세요." class="chatfooter">
						</td>
						<!-- <td class="sendicon">send</td> -->
					</tr>
					<tr>
						<td><input type="button" name="sendicon" class="sendicon" value="send"></td>
					</tr>
				</div>





			</div>

		</div>
		<!-- </iframe> -->

	</div>
	<script>
		
	</script>
</body>
</html>