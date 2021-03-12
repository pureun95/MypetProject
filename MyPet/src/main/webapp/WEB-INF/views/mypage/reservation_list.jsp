<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

/* 폰트 임시 */
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
.nanumsquare {
    font-family: 'NanumSquare', sans-serif !important;
}


/* 바디역할, 전체 관련 css 시작*/
#bodydiv {
	/* border: 1px solid black; */
	width: 1300px;
	margin: auto;
	padding-top: 150px;
	font-family: 'NanumSquare', sans-serif !important;
	text-align: center;
	font-size: 16px;
	color: #301B01;
}
	/* 버튼 css */
	.btnself {
		font-family: 'Jal_Onuel';
		background-color: #b27208;
		color: white;
	} 
	
	.btnself:hover {
		background-color: #b27208;
		color: white;
	}
	/* 버튼 css 끝 */

/* 바디역할 div 관련 css 끝 */


/* 머릿글 관련 css 시작 */

#hd1 {
	font-size: 24px;
	margin-top: 150px;
	margin-bottom: 10px;
}

.hd2 {
	font-size: 16px; 
	color: #F9820F;
	display: block;
	margin-bottom: 10px;
}

#h2 {
	font-size: 16px; 
	color: #F9820F;
	display: block;
}

.exptxt {
	text-align: center;
	font-size: 16px;
	color: #aaa;
}

/* 머릿글 관련 css 끝 */

/* 궁서체 쓸 곳 */
.infobox {
	margin: auto;
	width: 800px;
	height: 500 px;
	border: 5px solid #166517;
	border-radius: 10px;
	box-shadow: 5px 5px 5px 5px gray;
	margin-bottom: 100px;
}

/* 테이블 관련 css 시작 */

#tbl1 {
	margin-top: 100px;
	
}
#tbl1 th {
	text-align: center;
}

#tbl1 .animal, #tbl1 .shelter {
	font-weight: bold;
	text-decoration: underline;
	cursor: pointer;
}

#tbl1 tr:hover {
	background-color: #F6DA42;
}


ul, li {
	margin: 0px;
}


/* 테이블 관련 css 끝 */




</style>

<!-- 마이페이지 바디 역할 div -->
<div id="bodydiv">
	
	<!-- form 태그 시작 -->
	<!-- <form method="POST" action=""> -->
	
	<!-- 헤더, 설명글 -->
	<div id="hd1">입양 예약 진행 현황</div>
	<small class="hd2">※ 예약번호를 클릭하면 작성한 입양예약신청서를 볼 수 있습니다.</small>
	
	<!-- main table  -->
	<table class="table table-bordered" id="tbl1">
		<tr style="background-color: #b27208; color: white;">
			<th>예약번호</th>
			<th>축종</th>
			<th>보호소/동물병원</th>
			<th>신청자</th>
			<th>신청일</th>
			<th>상태</th>
		</tr>
		<tr>
			<td><a href="">000005</a></td>
			<td class="animal">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					개/푸들
					<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">품종 : 푸들</a></li>
						<li><a href="#">분류 : 개</a></li>
						<li><a href="#">나이 : 3살</a></li>
						<li><a href="#">성별 : 여자</a></li>
						<li><a href="#">중성화여부 : O</a></li>
						<li><a href="#">접종여부 : O</a></li>
						<li class="divider"></li>
						<li><a href="#"><img src="/mypet/"></a></li>
						<li class="divider"></li>
					</ul></li>
			
			</td>
			<td class="shelter">서울보호소</td>
			<td>홍길동</td>
			<td>2021-03-07</td>
			<td>승인대기</td>
		</tr>
		<tr>
			<td><a href="">000003</a></td>
			<td class="animal">개/푸들</td>
			<td class="shelter">쌍용24동물병원</td>
			<td>홍길동</td>
			<td>2021-03-07</td>
			<td>승인대기</td>
		</tr>
		<tr>
			<td><a href="">000001</a></td>
			<td class="animal">개/요크셔테리어</td>
			<td class="shelter">대구보호소</td>
			<td>홍길동</td>
			<td>2021-03-07</td>
			<td style="font-weight: bold; text-decoration: underline; cursor: pointer;">거절</td>
		</tr>		
	</table>
	
	



	<!-- 버튼 -->
	<div id="btnwrap" style="padding-bottom: 100px; text-align: center;">
		<!-- <button type="submit" class="btn btn-warning">예약 신청하기</button> -->
		<button type="button" class="btnself btn" id="btn1" onclick="alert('굿즈리스트 페이지로 연결')">더보기</button>
	</div>
	
	<hr style="margin: 50px;">
	
	<!-- form태그 끝 -->
	<!-- </form> -->
	
 <!-- 바디역할 끝 -->
</div>

<script>


</script>



	