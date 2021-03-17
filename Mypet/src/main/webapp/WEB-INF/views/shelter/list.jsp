<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>MyPet::보호소</title>
<style>

	 /* 잘 풀리는 오늘 */
    @font-face {
    font-family: 'Jal_Onuel';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Jal_Onuel.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }
    
    /* 나눔 스퀘어*/
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
	.nanumsquare {
	    font-family: 'NanumSquare', sans-serif !important;
	}
	
	
	
	#content{
        width: 1300px;
        margin: 0px auto;
        margin-top: 210px;
        padding: 20px 50px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       
        /* margin-right: px; */
    }

    /* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
    #content{
        height: auto;
    }

----------------------------------------------------------------
     #contentnav{
    	height : 50px;
    	border :none !important;
    	margin:30px 0px;
    }
    
    #contentnav span{
    	margin: 0px 10px;
    }
    
    #contentnav input[name=rd] {
    	
		display: none;
	}

	#contentnav #vet, #contentnav #shelter {
		float: left;
		width: 100px;
		text-align: center;
        cursor: pointer;
        font-size: 20px;
        font-family: 'Jal_Onuel';
        
	}
	#contentnav #shelter{
		color : #f6da42;
	}
     
     /* 페이지타이틀 */
    .board-title{
    	font-size : 30px;
    	text-align : center;
    	display: block;
    	margin-top: 100px;
    	margin-bottom: 50px;
    	font-family: 'Jal_Onuel';
    	color: #301b01;
    }
    
    
    /* 검색 */
    
    .selectsearch{
    	width:1000px;
    	text-align: center;
    	margin : 10px auto;
   		
    }   
    
    .selectsearch > select {
    	display: inline;
    	width : 200px;
    	margin: 0px 10px;
    	height: 30px;
    	padding : 0px 5px;
    }
    
    #search {
		width: 200px;
		display: inline;
		margin : 0px 10px;
	}
	
	.btn {
		font-family: 'Jal_Onuel';
		width : 70px;
    	margin : 10px;
    	padding : 10px 12px;
		border : none;
	    color: white;   
		background-color: #b27208;	
		outline: none !important;	
		border-radius : 5px;
		text-align: center;
	}
	
	.btns :hover {
		text-decoration: none;
	}
	
	/* 지도 */
	#map {
		width: 100%;
		height: 450px;
	}
	
	
	/* 테이블 */
	
	.table {
		margin : 10px auto;
		width : 1000px;
	}
	
	.table th, .table td{
		text-align: center;
	}
	
	.table th:nth-child(1) { width: 100px; }
	.table th:nth-child(2) { width: 250px; }
	.table th:nth-child(3) { width: 400px; }
	.table th:nth-child(4) { width: 250px; }
	
	.table td:nth-child(2) { text-align : left;}
	.table td:nth-child(3) { text-align : left;}
	
	.table .list:hover{
		background-color : #f6da42;
	}
	
	.table .name {
		cursor: pointer;
	} 
    
    
    /* 페이지바 */
    
     .pagebar {
     	width:1200px;
    	padding : 0px 360px;
    	margin-bottom :100px;
    	margin-top : 30px;
    } 
    
    .pagination{
    	width:700px;
    	height:40px;
    }
    
    .pagination> li > a {
		border-color : #ccc;
		color: #301b01;
        font-size: 18px;
        float: left;
	}
	
	.pagination > li > a:hover {
        background-color: #b27208;
        color: white;
    }
	

</style>

	 <div id="content">
		<div id="contentnav">
				<input type="radio" name="rd" id="vet" onclick="location.href='/mypet/vet/list.action'">
				<label id="vet" for="vet">동물병원</label>

				<input type="radio" name="rd" id="shelter" checked="checked">
				<label id="shelter" for="shelter">보호소</label>

		</div>
		<div class="board-title">보호소</div>

			<form id="searchForm" method="GET" action="/mypet/shelter/list.action">
				<div class="selectsearch">
					<select class="location form-control">
						<c:forEach items="${location}" var = "ldto">
							<option>${ldto.location}</option>
						</c:forEach>
					</select>
					
					<select class="locationDetail form-control">
						<c:forEach items="${location}" var = "ldto">
							<option>${ldto.locationDetail}</option>
						</c:forEach>
					</select>	
					
		           	<input type="text" class="form-control" placeholder="보호소이름" id="search" name="search" required value="${search}">
		           	<input type="button" class="btn" value="검색" name="search" onclick="$('#searchForm').submit();">	        	       
			     	<span>
			        	<input type="button" class="btn" value="등록" id="add" onclick="location.href='/mypet/vet/add.action'">   
					</span>
			     </div>
	        </form>
	   
		
		<div id="map"></div>
		<table class="table table-condan">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>전화번호</th>
			</tr>
			<c:forEach items="${list}" var = "sdto">
				<tr class="list">
					<td>${sdto.seqShelter}</td>
					<td class="name" onclick="location.href='/mypet/shelter/view.action?seq=${sdto.seqShelter}&search=${search}'">${sdto.name}</td>
					<td>${sdto.address}</td>
					<td>${sdto.tel}</td>
				</tr>
			</c:forEach>
		</table>
		
		<div class="pagebar">
			<ul class="pagination">
				${pagebar}
            </ul>      
		</div>
	</div>
	
	<!-- 지도 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a71ed926053f00dc51c27f804020abc9&libraries=services"></script>
	
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(37.499293, 127.033236),
			level : 8
		};

		var map = new kakao.maps.Map(container, options); //객체 생성 -> 지도 출력
	
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('서울시 강남구 역삼동', function(result, status) {
			
			// 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:200px;text-align:center;padding:6px 0;">학원</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 	
		});
		</script>
