<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<title>MyPet :: 상세보기</title>
<style>
 
 #content{
        width: 1300px;
        height: auto;
        margin: 0px auto;
        margin-top: 210px;
        padding: 20px 200px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       	font-family: 'NanumSquare';
       	color: #301b01;
        /* margin-right: px; */
    }
    
    
    /* 제목 */
    .title-box {
    	border-bottom: 1px solid gainsboro;
    	margin-top: 100px;
    	margin-bottom: 60px;
    	height: 50px;
    	
    }
    
    .title {
    	font-size: 24px;  
    	display: block;
    	float: left; 
    	font-weight: bold;
    	 	
    }
    
    .state {
    	/* border: 1px solid #f9820f; */
	    width: 82px;
	    height: 30px;
	    border-radius: 5px;
	    color: #ffffff;
	    font-size: 14px;
	    background-color: #f9820f;
	    margin-top: 2px;
	    margin-right: 15px;
	    float: left;
	    padding: 5px 15px;
	    opacity: .9;
	    font-family: 'Jal_Onuel' !important;
    }
    
    
    .like-count {
    	/* border: 1px solid black; */
    	float: right;
    	margin-left: 50px;
    	margin-right: 20px;
    	margin-top: 7px;
    }
    
    .like {
    	/* border: 1px solid black; */
    	width: 24px;
    	height: 24px;
    	margin-right: 10px;
    	background-image: url(/mypet/resources/images/like.png);
		background-size: cover;
    	background-position: 50% 50%;
    	float: left;
    	cursor: pointer;
    }
    
    .like:hover {
    	background-image: url(/mypet/resources/images/heart.png);
    }
    
    .count {
    	font-size: 16px;
    	display: block;
    	float: left;
    }
    
    .detail {
    	/* border: 1px solid black; */
    	width: 900px;
    	height: 700px;
    }
    
    .img {
    	/* border: 1px solid black; */
    	width: 900px;
    	height: 650px;
    	background-size: contain;
    	background-repeat: no-repeat;
    }
    
    .subimg {
    	/* border: 1px solid #eee; */
	    width: 900px;
	    height: 180px;
	    float: left;
	    margin-bottom: 100px;
	    margin-top: 50px;
	    /* padding: 15px; */
    }
    
    .img-sub {
    	border: 1px solid #eee;
    	width: 200px;
    	height: 150px;
    	margin-right: 25px;
    	float: left;
    	cursor: pointer;
    }
    
    .img-sub:last-child {
    	margin-right: 0px;
    }
    
    
    /* 기본정보 */
    
    .table {
    	width: 900px;
    	margin-bottom: 100px;
    }
    
    
    .basic-info {
    	display: block;
    	text-align: center;
    	font-size: 20px;
    	margin-top: 100px;
    	margin-bottom: 50px;
    	font-weight: bold;
    	clear: both;
    }
    
    
    
    .headtr > th, td {
    	text-align: center;
    	/* border-right: 1px solid #ddd; */
    }
    
    .boardth {
    	width: 200px;
    	border-right: 1px solid #ddd;
    	background-color: #f7f7f7;
    }
    
    .headtr > .boardth:nth-child(3) {
    	border-left: 1px solid #ddd;
    }
    
    .headtr > .boardth:nth-child(2) {
    	background-color: #ddd;
    }
    
    .boardtr {
    	width: 250px;    	
    }
    
    
    .no-border {
    	border: 0px;
    }
    
    .headtr:last-child {
    	border-bottom: 1px solid #ddd;
    }
    
    
    /* 게시판 textarea */
    .info {
    	width: 100%;
    	height: 500px;
    }
    
    .headtr {
    	
    }
    
    table > tbody > tr > .firstth {
    	padding: 10px;
    	border-right: 1px solid #e8e8e8;    	
    	border-top: 1px solid #e8e8e8;   
    	text-align: center;
    	background-color: #f9f9f9;
    } 
    
    
    
    table > tbody > tr > .firsttd {
    	padding: 10px 15px;
    	text-align: left; 	
    	border-top: 1px solid #e8e8e8;   
    } 
    
    
    .common-btn {
        background-color: #b27208;
        color: white;
        margin-right: 10px;
        font-family: 'Jal_Onuel';
        margin-left: 850px;
    	margin-top: -150px;
    }
    
    .common-btn:hover {
        color: white;
        outline: none;
    }

    .common-btn:active {
        outline: none !important;
    }
    
    .common-btn:nth-child(2) {
    	margin-top: 20px;
	    margin-left: 760px;
	    margin-bottom: 10px;
	    width: 140px;
    }
    
   
   
</style>

<div id="content">
	<div class="title-box">
		<span class="state">${dto.state }</span><span class="title">${dto.title }</span>
		<div class="like-count"><img class="like" src="../resources/images/like.png">
		<span class="count">${dto.likes }</span></div>
	</div>
	
	
	<input type="button" class="btn common-btn" value="입양예약하기" onclick="location.href='/mypet/adoption/writereservation.action?seqPet=${dto.seqPet}'">
	
	<div class="detail">
	
	<!-- 이미지 split -->
	<c:set var="keyword" value="${dto.img }"></c:set>
	<c:set var="arr" value="${fn:split(keyword ,',')}"></c:set>
		<!-- 메인 이미지 -->
		<img class="img" src="../resources/images/adoption/${arr[0] }">
		
		<!-- 서브 이미지 -->
		
		<div class="subimg">
			<c:forEach var="img" items="${arr }">
			<img class="img-sub" src="../resources/images/adoption/${img }" alt="${img }">
			<input type="hidden" class="hidden" value="${img }">
		</c:forEach>
		</div>
		
	</div>

	

	
	<!-- 동물 기본 정보 -->
	
	<span class="basic-info">기본정보</span>
	
	<table class="table">
		<tr class="headtr">
			<th class="boardth">종류</th>
			<td class="boardtr">${dto.species }</td>
			<th class="boardth">나이</th>
			<td class="boardtr" class="no-border">${dto.age }</td>			
		</tr>		
		<tr class="headtr">
			<th class="boardth">성별</th>
			<td class="boardtr">${dto.gender }</td>
			<th class="boardth">분류</th>
			<td class="boardtr" class="no-border">${dto.sizes }</td>			
		</tr>
		<tr class="headtr">
			<th class="boardth">접종유무</th>
			<td class="boardtr">${dto.vaccination }</td>
			<th class="boardth">중성화유무</th>
			<td class="boardtr" class="no-border">${dto.neu }</td>			
		</tr>		
	</table>
	
	
	<!-- textarea 공간 -->
	<div class="info">
		${dto.content }
	</div>
	
	
	<!-- 이전글 & 다음글 -->
	<table class="table">
		<tr class="headtr">      	
	       <td class="firstth" style="width: 100px">이전글</td>
	       <td class="firsttd">이전글입니다.</td>
	    </tr>
	    <tr class="headtr">      	
	       <td class="firstth" style="border-bottom: 1px solid #e8e8e8">다음글</td>
	       <td class="firsttd" style="border-bottom: 1px solid #e8e8e8">다음글입니다.</td>
	    </tr>
	</table>
	
	<input type="button" class="btn common-btn" value="목록" onclick="location.href='/mypet/adoption/list.action'">
	

</div>


<script>
	
	/* 서브 이미지 클릭하면 메인 이미지로 오기 */
	$(".img-sub").click(function() {
		
		var img = $(this).attr('src');
		
		$(".img").attr("src", img);
	})
	
</script>
