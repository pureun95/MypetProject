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
    	border: 1px solid black;
    	margin-left: 200px;
    	width: 800px;
    	height:	500px;
    	margin-bottom: 100px;
    }
    
    #map {
    	border: 1px solid black;
    	width: 800px;
    	height: 350px;
    	margin-bottom: 50px;    
    }
    
    .map-search > input[type=text] {
    	width: 690px;
    	float: left;
    	margin-right: 20px;
    }
    
    .map-search > input[type=button] {
    	width: 80px;
    	float: left;
    	color: white;
    	background-color: #b27208;
    	font-size: 16px;
    	border: 0px;
    	font-family: 'NanumSquare';
    	
    }
    
    /* 동물 종류 검색 */
    
    .pet-radio > input[type=radio] {
    	display: none;
    }
    
    .pet-radio > label {
    	border: 1px solid black;
    	width: 50px;
    	height: 50px;
    	
    }
    
    input[type="radio"]:checked + label {
		background-color: #f6afb3;
		color: white;
	}
    
    
    /* 입양글 리스트 */
    .list {
    	border: 1px solid black;
    	width: 1200px;
    	height: 1500px;
    	
    }
    
    .list-detail {
    	border: 1px solid black;
    	width: 280px;
    	height: 360px;
    	float: left;
    	margin-left: 90px;
    	margin-bottom: 90px;
    }
    
    
    .img {
    	border: 1px solid black;
    	width: 280px;
    	height: 280px;
    }
    
    .pet-title {
    	font-size: 16px;
    	font-family: 'NanumSquare';
    	display: block;
    	margin-top: 5px;
    }
	
</style>


  <div id="content">
    <span class="title">입양하기</span>
    <!-- 지도&검색창 -->
    <div class="map-search">
    	<div id="map">지도다</div>  
    	
    	<div class="pet-radio">
    		<label for="dog">강아지</label>
    		<input type="radio" name="dog" id="dog" value="0">
    		<label for="cat">고양이</label>
    		<input type="radio" name="cat" id="cat" value="1">
    		<label for="rabbit">토끼</label>
    		<input type="radio" name="rabbit" id="rabbit" value="2">
    		<label for="etc">기타동물</label>
    		<input type="radio" name="etc" id="etc" value="3">
    	</div>
    	
    	<input type="text" class="form-control" value="검색 키워드를 입력해주세요.">
    	<input type="button" class="btn" value="검색">    
    </div>
    
    
    <!-- 9개씩 나오기 -->
    <div class="list">
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
    	</div>
    	<div class="list-detail">
    		<div class="img"></div>
    		<span class="pet-title">귀여운 또또의 친구가 되어주세요.</span>
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


	

