<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<title>MyPet::공지사항</title>
<style>
body {
	font-family: 'NanumSquare';
}

#content {
	width: 1300px;
	margin: 0px auto;
	margin-top: 150px;
	padding: 20px 50px;
	/* border: 1px solid rgb(230,229,235); */
	border: 1px solid transparent;
}

/* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
#content {
	height: 1000px;
}

.board-name {
	/* border: 1px solid black; */
	display: block;
	text-align: center;
	margin-top: 130px;
	margin-bottom: 50px;
	font-size: 30px;
	font-family: 'Jal_Onuel';
	/* font-family: 'NanumSquare';
        font-weight: bold; */
	color: #301b01;
}

/* 테이블 css */
table {
	font-size: 16px;
}

.tr2:hover {
	background-color: #F6DA42;
}

.firsttd {
	width: 100px;
	text-align: center;
}

.sectd {
	width: 600px;
	text-align: center;
}

.thirdtd {
	width: 200px;
	text-align: center;
}

.fourthtd {
	width: 100px;
	text-align: center;
}

/* 번호, 날짜, 조회수 */
.tr2>td:nth-child(1), td:nth-child(3), td:nth-child(4) {
	text-align: center;
}

/* 제목 */
.headtr>td:nth-child(2) {
	text-align: left;
}

/* 검색창 & 버튼 박스 */
.pageSearch {
	/* border: 1px solid black; */
	width: 1200px;
	height: 130px;
	margin-top: 50px;
	padding: 0px 360px;
}

a {
	color: #222;
}

a:hover {
	color: #222;
	text-decoration: none;
}

/* 게시판 검색창 공통 클래스 */
.search-text {
	width: 340px;
	float: left;
	margin-right: 20px;
	font-size: 16px;
}

/* 버튼 공통 클래스 */
.btn {
	font-family: 'Jal_Onuel';
	cursor: pointer;
}

.common-btn {
	background-color: #b27208;
	color: white;
	float: left;
	margin-right: 10px;
	font-family: 'Jal_Onuel';
}

.common-btn:hover {
	color: white;
	outline: none;
}

.common-btn:active {
	outline: none !important;
}

/* 페이지바 */
.pagination {
	width: 700px;
	height: 40px;
}

.pagination>li>a {
	border-color: #ccc;
	color: #301b01;
	font-size: 16px;
	float: left;
}

.pagination>li>a:hover {
	background-color: #b27208;
	color: white;
}

.board-btn {
	/*  border: 1px solid black; */
	height: 50px;
}

.board-btn>input:nth-child(1) {
	margin-left: 1060px;
}
</style>


<div id="content">
	<span class="board-name">공지사항</span>
	<div class="board-btn">
		<input type="button" class="btn common-btn" value="글쓰기"> <input
			type="button" class="btn common-btn" value="삭제">
	</div>
	<table class="table table-condensed">
		<tr class="headtr">
			<th class="firsttd">번호</th>
			<th class="sectd">제목</th>
			<th class="thirdtd">날짜</th>
			<th class="fourthtd">조회수</th>
		</tr>
		<c:forEach items="${noticeList}" var="noticeDTO">
			<tr class="tr2">
				<td>${noticeDTO.seqNotice}</td>
				<td><a
					href="/mypet/board/noticeview.action?seqNotice=${noticeDTO.seqNotice}">${noticeDTO.title}</a></td>
				<td>${fn:substring(noticeDTO.writeDate,0,10)}</td>
				<td>${noticeDTO.viewCount}</td>
			</tr>
		</c:forEach>

	</table>

	<!-- 글쓰기 버튼 아래 -->
	<!-- <div class="board-btn"><input type="button" class="btn common-btn" value="글쓰기"></div> -->
	<!-- 페이지바/검색창 -->

	<div class="pageSearch">
		<!-- 페이지바 -->
		<div style="text-align: center;">
			<nav class="pagebar">
				<ul class="pagination" id="page_bar">${pagebar}
				</ul>
			</nav>
		</div>
		<div style="width: 100%;">
			<button type="button" class="btn btn-default" id="basic-addon4"
				onclick="location.href='/Myhome_project/Myhome/user/boardchecklist.do';">목록</button>
		</div>
		<div style="clear: both;"></div>

		<!-- 검색창 & 검색 버튼 -->
		<input type="textbox" class="form-control search-text"> <input
			type="button" class="btn common-btn" value="검색">
	</div>
</div>




<script>
	
</script>
