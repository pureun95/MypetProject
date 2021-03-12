<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<!--  이거는 스타일 수정 -->
<style>

body {
	background-color: #F0F0F0;
}

#content {
	font-size: 16px;
}


/* Auth css */
.loginbox {
	/* border: 1px solid #e2e2e2; */
	height: 600px;
	margin: 100px auto;
	padding: 50px 40px;
	width: 600px;
	border-radius: 30px;
	/* margin-left: 60px; */
	/* box-shadow: 0px 5px 15px #e4e4e4; */
	box-shadow: rgba(81, 99, 120, 0.3) 0px 6px 60px 0px;
	background-color: white;
	font-family: 'JSDongkang-Regular';
	
}

.loginbox2 {
	margin: 25px auto;
	width: 450px;
	position: relative;
	
}

.loginbox>input {
	margin-bottom: 20px;
}

 .form-control {
	width: 100%;
	height : 5rem;
	position: relative;
	margin-bottom: 10px;
	font-size: 16px;
}

.inputs {
	width: 100%;
	display: inline-block;
	
}

#btn-login {
	/* margin-left: 120px; */
	display: inline-block;
	margin-top: 20px;
	width: 100%;
	background-color: #F6DA42;
	color: white;
	font-family: 'Jal_Onuel';
	height: 5rem;
	font-size: 16px;
}

.login-title {	
    width: 100%;
    height: 80px;
    margin-bottom: 10px;
	padding-left: 10px;
	font-size: 35px;
	font-family: 'Jal_Onuel';
	color: #F6DA42;
	margin-left: 100px;
	margin-top: 70px;
}

 .login-title>span {
	display: block;
	float: left;
	margin-top: -15px;
}

.logo {
	/* border: 1px solid black; */
	width: 80px;
	height: 80px;
	float: left;
	/* margin-left: 30px; */
	background-image: url('/mypet/resources/images/logo.png');
	background-size: cover;
	background-position: 50% 50%;
	margin-right: 10px;
}

.search {
	/* border: 1px solid black; */
	width: 100%;
	height: 4rem;
	text-align: center;
	font-family: 'JSDongkang-Regular';
	padding: 10px;
	
}

.search>a {
	color: #202020;
}

.search>span {
	margin: 0px 10px;
	color: #cacaca;
}


</style>

<!-- 요 칸안에 내용작성하세요 -->
<div id="content">

	<div class="loginbox">
		<div class="loginbox2">
			<div class="login-title">
				<span class="logo"></span>로그인
			</div>
			<div class="inputs">
			<input type="text" class="form-control readonly" id="id" name="id" placeholder="아이디" required></div>
			<div class="inputs">
			<input type="password" class="form-control readonly" id="pw" name="password" placeholder="패스워드" required></div>
	
			<div class="search">
				<a href="/#">아이디 찾기</a> <span>|</span> <a href="/#">비밀번호 찾기</a> <span>|</span> <a href="/#">회원가입</a>
			</div>
	
	
			<input type="submit" class="btn btn-outline-secondary" type="button"
				id="btn-login" value="로그인">
		</div>






		<!-- 테스트용 -->
		<!-- <button type="button" class="btn" onclick="test('ccu7678','ccu7678nt');">이제위</button> -->

		<%-- <div>${empty id ? "익명" : id}</div> --%>

		<!-- <div><a href="/mypet/member/logout.action">로그아웃</a></div> -->

	</div>

	<div>
		<button>
			<a href="/mypet/member/login.action?id=hong">홍길동</a>
		</button>
	</div>












</div>