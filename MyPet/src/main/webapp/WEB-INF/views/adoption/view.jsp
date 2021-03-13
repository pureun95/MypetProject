<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    	border: 1px solid black;
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
    	border: 1px solid black;
    	width: 900px;
    	height: 700px;
    }
    
    .img {
    	border: 1px solid black;
    	width: 900px;
    	height: 500px;
    	background-size: cover;
    /* 	background-position: 50% 50%; */
    }
    
    .img-sub {
    	border: 1px solid #eee;
    	width: 200px;
    	height: 150px;
    	margin-right: 32px;
    	margin-top: 20px;
    	float: left;
    }
    
    .img-sub:last-child {
    	margin-right: 0px;
    }
    
    
    /* 기본정보 */
    
    .basic-info {
    	display: block;
    	text-align: center;
    	font-size: 20px;
    	margin-top: 100px;
    	margin-bottom: 50px;
    }
    
    
    
    .headtr > th, td {
    	text-align: center;
    	border-right: 1px solid #ddd;
    }
    
    .board-th {
    	width: 100px;
    }
    
    .board-tr {
    	width: 200px;
    }
    
    
    .no-border {
    	border: 0px;
    }
    
   
</style>


<div id="content">
	<div class="title-box">
		<span class="title">쫑쫑이의 가족이 되어주세요.</span>
		<div class="like-count"><img class="like" src="../resources/images/like.png">
		<span class="count">12</span></div>
	</div>
	
	<div class="detail">
		<img class="img" src="../resources/images/adoption/1.jpg">
		<img class="img-sub" src="../resources/images/adoption/nopic2.png">
		<img class="img-sub" src="../resources/images/adoption/nopic2.png">
		<img class="img-sub" src="../resources/images/adoption/nopic2.png">
		<img class="img-sub" src="../resources/images/adoption/nopic2.png">
	</div>
	
	
	
	<!-- 동물 기본 정보 -->
	
	<span class="basic-info">기본정보</span>
	
	<table class="table">
		<tr class="headtr">
			<th class="boardth">종류</th>
			<td class="boardtr">포메라니안</td>
			<th class="boardth">나이</th>
			<td class="boardtr" class="no-border">2개월</td>			
		</tr>		
		<tr class="headtr">
			<th class="boardth">성별</th>
			<td class="boardtr">여아</td>
			<th class="boardth">분류</th>
			<td class="boardtr" class="no-border">소형견</td>			
		</tr>
		<tr class="headtr">
			<th class="boardth">접종유무</th>
			<td class="boardtr">O</td>
			<th class="boardth">중성화유무</th>
			<td class="boardtr" class="no-border">X</td>			
		</tr>
		
	</table>
	
</div>

