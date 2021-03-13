<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    	font-size: 22px;  
    	display: block;
    	float: left; 
    	 	
    }
    
    
    .like-count {
    	/* border: 1px solid black; */
    	float: left;
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
    	border: 1px solid black;
    	width: 200px;
    	height: 150px;
    	margin-right: 32px;
    	margin-top: 20px;
    	float: left;
    }
    
    .img-sub:last-child {
    	margin-right: 0px;
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
	
	<div class="detaile2">
	
		<table>
			<tr>sss</tr>
		</table>
	</div>
</div>

