<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	

<title>MyPet :: 입양하기</title>
	
<style>
	
	/* content */
    #content{
        width: 1300px;
        height: auto;
        margin: 0px auto;
        margin-top: 210px;
        padding: 20px 50px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       	font-family: 'NanumSquare';
        /* margin-right: px; */
    }
    
    .title {
    	margin-top: 130px;
    	margin-bottom: 50px;
    	font-size: 30px;
        font-family: 'Jal_Onuel';
        text-align: center;
        display: block;
    	
    }
    
    
    /* 지도 & 검색창 */
    .map-search {
    	/* border: 1px solid black; */
    	margin-left: 200px;
    	width: 800px;
    	height:	550px;
    	margin-bottom: 100px;
    }
    
    #map {
    	/* border: 1px solid black; */
    	width: 800px;
    	height: 350px;
    	margin-bottom: 50px;    
    }
    
    .map-search > input[type=text] {
    	width: 425px;
    	float: left;
    	margin-right: 20px;
    	margin-left: 135px;
    }
    
    .map-search > input[type=button] {
    	width: 80px;
    	float: left;
    	color: white;
    	background-color: #b27208;
    	font-size: 16px;
    	border: 0px;
    	font-family: 'Jal_Onuel';
    	
    }
    
    .map-search > input[type=text] {
    	color: #9c9c9c;
    }
    
    
    /* 동물 종류 검색 */
    
    .pet-radio {
    	/* border: 1px solid black; */
    	width: 800px;
    	height: 80px;
    	padding: 0px 135px;
    }
    
    .pet-radio > input[type="radio"] {
    	display: none;
    }
    
    .pet-radio > label {
    	border: 1px solid #eee;
    	width: 130px;
    	height: 45px;
    	float: left;
    	border-right: 0px;
    	font-size: 16px;
    	font-family: 'NanumSquare';
    	text-align: center;
    	padding: 10px;
    }
    
    
    .pet-radio > label:nth-child(8) {
    	border-right: 1px solid #eee;
    }
    
    
    
    input[type="radio"]:checked + label {
		background-color: #fab018;
		color: white;
	}
    
    
    /* 입양글 리스트 */
    .list {
    	/* border: 1px solid black; */
    	width: 1200px;
    	height: 1700px;
    	
    }
    
    .list-detail {
    	border: 1px solid #eee;
    	width: 281px;
    	height: 400px;
    	float: left;
    	margin-left: 90px;
    	margin-bottom: 120px;    
    	color: #301b01;	
    }
    
    .list-detail > span {
    	margin-left: 5px;
    }
    
    .pet-seq {
    	/* border: 1px solid black; */
    	margin-left: 5px;
    	margin-top: 10px;
	    font-size: 12px;	    
	    height: 30px;
    }
    
    .list-detail > .state {
    	display: block;
    	background-color: #f9820f;
    	width: 80px;
    	height: 25px;
    	color: white;
    	text-align: center;
    	margin-left: 100px;
    	margin-top: 20px;
    	border-radius: 5px;
    	font-family: 'Jal_Onuel';
    	padding: 4px;
    	opacity: .8;
    }
    
    .img {
    	/* border: 1px solid black; */
    	width: 280px;
    	height: 280px;
    	cursor: pointer;
    	
    }
    
    .img-pet {
    	width: 280px;
    	height: 280px;
    	background-size: cover;
    	background-position: 50% 50%;
    }
    
    .pet-title {
    	font-size: 16px;
    	font-family: 'NanumSquare';
    	display: block;
    	margin-top: 10px;
    	margin-left: 5px;
    	margin-bottom: 10px;
    	font-weight: bold;
    	
    }
	
	.pet-address {
		font-size: 13px;
    	font-family: 'NanumSquare';
    	display: block;
    	margin-top: 5px;
    	margin-left: 5px;
	}
	
	.like {
		/* border: 1px solid black; */
		width: 28px;
    	height: 28px;
    	background-image: url(/mypet/resources/images/like.png);
		background-size: cover;
    	background-position: 50% 50%;
    	margin-top: -45px;
    	margin-left: 245px;
    	background-color: transparent;
    	cursor: pointer;
    	/* float: left; */
	}
	
	.like:hover {
		background-image: url(/mypet/resources/images/heart.png);
	}
	
	
	/* 페이지바 */

    .pagination {
        width: 700px;
        height: 40px;
        margin-top: 60px;
    }
    .pagination> li > a {
		border-color : #ccc;
		color: #301b01;
        font-size: 16px;
        float: left;
	}

    .pagination>li>a:hover {
        background-color: #b27208;
        color: white;
    }

    
    /* 검색창 & 버튼 박스 */
    .pageSearch {
        /* border: 1px solid black; */
        width: 1200px;
        height: 130px;
        margin-top: 50px;
        padding: 0px 360px;
    }

    /* 게시판 검색창 공통 클래스 */
    .search-text {
        width: 340px;
        float: left;
        margin-right: 20px;
        font-size: 16px;
    }
    
  
    
</style>


  <div id="content">
    <span class="title">입양하기</span>
    <!-- 지도&검색창 -->
    <div class="map-search">
    	<div id="map">지도다</div>  
    	
    	<div class="pet-radio">
    		<input type="radio" name="pet" id="dog" value="0" checked>
    		<label for="dog">강아지</label>    	
    		<input type="radio" name="pet" id="cat" value="1">
    		<label for="cat">고양이</label>
    		<input type="radio" name="pet" id="rabbit" value="2">
    		<label for="rabbit">토끼</label>
    		<input type="radio" name="pet" id="etc" value="3">
    		<label for="etc">기타동물</label>    		
    	</div>
    	
    	<input type="text" class="form-control" value="검색 키워드를 입력해주세요." onfocus="this.value=''">
    	<input type="button" class="btn" value="검색">    
    </div>
    
    
    <!-- 9개씩 나오기 -->
    <div class="list">    	    	    		
    	<div class="list-detail">    	
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/1.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>여기!!!! ${result }</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양가능</span>    		
    	</div>
	
		<!-- 나중에 삭제 -->

    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/2.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양가능</span>  
    	</div>
    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/3.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양완료</span>  
    	</div>
    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/4.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양완료</span>  
    	</div>
    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/5.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양완료</span>  
    	</div>
    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/6.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양완료</span>  
    	</div>
    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/7.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양완료</span>  
    	</div>
    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/8.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양완료</span>  
    	</div>
    	<div class="list-detail">
    		<div class="img"><img class="img-pet" src="../resources/images/adoption/9.jpg"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    		<span class="pet-address">서울시 종로구 어쩌구동</span>
    		<span class="pet-address">한사랑 동물병원</span>
    		<div  class="pet-seq"><span>no.1</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">입양완료</span>  
    	</div>
    
    
    <!-- 페이지바 -->
    <div class="pageSearch">
        <!-- 페이지바 -->
          <ul class="pagination">
              <li><a href=\"#!\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>
              <li><a>1</a></li>
              <li><a>2</a></li>
              <li><a>3</a></li>
              <li><a>4</a></li>
              <li><a>5</a></li>
              <li><a>6</a></li>
              <li><a>7</a></li>
              <li><a>8</a></li>
              <li><a>9</a></li>
              <li><a>10</a></li>
              <li><a href=\"#!\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>
           </ul>       
     </div>
    
    
    
    
    </div>
    
    
    
    
        
    
    
   <!-- content -->
   </div> 
   
   
   
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc381e86fe3a181e10d9e43cfc83f97a"></script>
<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>


	

