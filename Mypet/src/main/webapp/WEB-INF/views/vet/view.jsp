<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<title>MyPet::동물병원</title>	
<style>

    /* content */
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

/*     #contentnav {
        border: 1px solid black;
        width: 1200px;
        height: 100px;
        padding: 20px 20px;
    } */
    
    /* 페이지타이틀 */
    .board-title{
    	font-size : 30px;
    	text-align : center;
    	display: block;
    	margin-top: 130px;
    	margin-bottom: 50px;
    	font-family: 'Jal_Onuel';
    	/* font-family: 'JSDongkang-Regular'; */
    	/* font-family: 'JSDongkang-Bold'; */
    	color: #301b01;
    }
    
	/* 테이블 */
	
	.table{
		width : 1100px;
		height: auto;
		margin : 10px auto;
		font-size: 16px;
	}
	
	.table > tr {
		padding-top : 3px;
	}
	
	.table #list td, .table #list th {
		margin-top : 30px;
		vertical-align: middle;
	}
	
	.tabl th {
		margin-left: 20px;
	}
	


    /* 로고이미지 */
    
    .logo{
    	width : 400px;
    } 
    
    #img {
    	width : 400px;
    	height: 300px;
	    background-size: contain;
	    background-repeat : no-repeat;
    	padding : 5px;
	    
    }
    
    /* 지도 */
	#map {
		width: 1100px;
		height: 450px;
		text-align: center;
		margin-bottom:100px;
	}
	
	/* 버튼 */
	
	
	.btns{
		background-color: #b27208;
		border : none;
		text-align: center;
	    color: white;
		border-radius : 5px;
		margin: 0px 10px;
		padding : 6px 12px;
		outline: none !important;
	}
	
	.listbtn{
		text-align: right;
		margin:10px 30px;
	}
}
    
</style>

<div id="content">
	<!-- <div id="contentnav">개인 서브네비입니다.</div> -->
	<div class="board-title">가나다 동물병원 상세정보</div>
	<div class="listbtn"> 
		<input type="button" class="btns" value="목록" onclick="location.href='/mypet/vet/list.action'">
	</div>
	<table class="table table-default">
		<tr id="list">
			<td rowspan='5' class="logo">
				<div id="img" style="background-image:url(/mypet/resources/images/vet/24snc동물메디컬센터.jpg);"></div>
			</td>
			<th>이름</th>
			<td>가나다 동물병원<input type="button" class="btns" value="진료예약하기" id="serch" onclick="$('#searchForm').submit();"></td>
		</tr>		
		<tr id="list">
			<!-- <td></td> -->
			<th>주소</th>
			<td>서울특별시 강남구 역삼동</td>
		</tr>
		<tr id="list">
			<!-- <td></td> -->
			<th>전화번호</th>
			<td>0507-1234-5678</td>
		</tr>
		<tr id="list">
			<!-- <td></td> -->
			<th>진료시간</th>
			<td>09:00-18:00</td>
		</tr>
		<tr id="list">
			<!-- <td></td> -->
			<th>진료목록</th>
			<td>건강검진, 안과치료</td>
		</tr>
		<tr id="list">
			<td colspan='3' class="map"><div id="map"></div></td>
			<!-- <th></th> -->
			<!-- <td></td> -->
		</tr>
	</table>
	
	
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a71ed926053f00dc51c27f804020abc9"></script>
	
<script>
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.499293, 127.033236),
		level : 5
	};
	
	
	var map = new kakao.maps.Map(container, options); //객체 생성 -> 지도 출력
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {
		
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
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">가나다동물병원</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 	
	});
</script>








